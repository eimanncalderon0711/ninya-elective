import { useEffect, useState } from 'react';
import axios from 'axios';
import qr_code from './assets/qr_image.png'
import { CiCreditCard2 } from "react-icons/ci";


function App() {
  const [data, setData] = useState({});
  const [refresh, setRefresh] = useState(false);
  

  const fetchEntries = async () => {

    const response = await axios.get('http://192.168.1.19/rfid_test/entries.php')
    const data = response.data;

    setData(data);
    console.log(data);

  }


  useEffect(() => {
    fetchEntries();
    const timer = setTimeout(() => setRefresh(!refresh), 500)

    clearTimeout( () => timer())
  }, [refresh]) 

  return (
    <div className='flex bg-slate-200 h-svh justify-center items-center'>
      {data.status ? 
      <div className='flex flex-row w-[600px] justify-between pr-20 pl-10 rounded-2xl shadow-lg h-[300px] bg-white items-center'>
        <div>
          <img src={data.profile} className='h-52 w-52 object-contain'/>
          <p className='text-xl text-green-500 font-bold text-center'>User Found</p>
        </div>
        <div>
          <CiCreditCard2 size={200} color={data.status ? 'green' : 'red'}/>
          <h1 className='text-2xl font-bold'>RFID: <span className='font-normal'>{data.registrants_rfid}</span></h1>
          <h1 className='text-2xl font-bold'>Status: <span className={`font-normal ${data.status < 1 ? "text-red-500" : "text-green-500"}`}>{data.status}</span></h1>
        </div>
      </div> 
      : 
        data.message ? 
        <div className='flex flex-col w-[600px] justify-center  rounded-2xl shadow-lg h-[300px] bg-white items-center'>
          <CiCreditCard2 size={200}/>
          <div className='text-2xl font-normal'>Scan Your Card Now</div>
          <div className='text-2xl font-bold'>{data.message}</div>
        </div> : <div className='flex flex-row w-[600px] justify-between pl-10 pr-32 rounded-2xl shadow-lg gap-4 h-[300px] bg-white items-center'>
        <CiCreditCard2 size={200} color='red'/>
      <div>
        <h1 className='text-2xl font-bold'>RFID: <span className='font-normal'>{data.registrants_rfid}</span></h1>
        <h1 className='text-2xl font-bold'>Status: <span className={`font-normal text-red-500`}>{data.message ? "" : "Not Found"}</span></h1>
      </div>
     </div> 
     
      }
    </div>
  );
}

export default App;
