const runLoading = () => {
  const loading = document.querySelector(".loading");
  document.addEventListener('DOMContentLoaded', (event) => {
    setTimeout(() => { 
      loading.style.display = "none";
      const go = document.querySelector(".feed-go");
      go.click()
    }, 3000); 
  });  
};

export { runLoading };