Tokyo Midtown Medical Center wishes to expand its medical care for their customers located in Japan. Their main goal is to create a J-Tele-Doctor for their customers who fear actually going to the hospital with a sickness, i.e. they don’t want to spread their sickness to others and/or are located abroad. TMMC views this as an opportunity to expend their services before the next pandemic occurs. 
Despite generous offers from Azure Japan for application support, AWS Japan has won this contract and you have been tasked as the Solution Architect.  Due to the fact that many of their customers travel abroad, the application must be available abroad and must also offer local language support.
In Stage One of this project, you are being tasked with completing the following.
You must have local application hosting for Japanese and foreign customers in the following locations:
Tokyo.
New York
London
Sao Paulo
Australia 
Hong Kong
California.
Local requirements: Each area must have the following
ASG with min 2 AZs
Min 1 EC2 for the current test deployment
Deployment to a security zone where syslog data can be transferred. Additionally, must demonstrate technical ability to transfer data to Japan.
Limitation to port 80 open to the public.
Limitations: These must be observed and respected. Failure will mean automatic project failure.
Syslog data must be stored in Japan only. SIEM/Syslog server will be deployed in Stage 2
No personal information can be stored abroad and must be limited to Japan’s borders. Additionally, this data can’t be transferred via a VPN.
Databases will be deployed in Stage 2
AZ containing syslog data must be limited to a private subnet.
