document.getElementById('clearBtn').addEventListener('click', function() {
  chrome.browsingData.removeHistory({
    "since": 0
  }, function() {
    document.getElementById('status').textContent = '历史记录已清理！';
  });
}); 