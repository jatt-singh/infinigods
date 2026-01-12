import React from 'react'

const Regions = () => {
  return (
    <>
      <section id='regions'>
        <h1>OUR REGIONS</h1>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Indeed, accusers where! Expedita are just to seek except will like.</p>
        <div className="region_container">
        <div className="card">
         <img src="https://plus.unsplash.com/premium_photo-1679857224535-85d45adae907?w=800&q=80" alt="mountains" />
         <h2>Mountains</h2>
         <p><span>90</span> Properties</p> 
        </div>
        <div className="card">
        <img src="https://images.unsplash.com/photo-1486607303850-bc051a4ffad4?w=800&q=8" alt="coastline" />
         <h2>Coastline</h2>
         <p><span>52</span> Properties</p> 
        </div>
        </div>
        </section> 
    </>
  )
}

export default Regions