using CSV
data = CSV.File("six_mounth_crypto.csv")
data
show(data)
println(data.BTC)
NOP_BTC=[] #Negative or positive for BTC or any other Altcoin
Retrun_BTC = []
Return_ETH = []
Return_ADA = []
Return_SOL = [] 
Return_AVAX = [] 
Return_DOGE = [] 
Return_XRP  = []
Return_MATIC = []
# Calculating returns
for i in 1:(length(data.BTC) - 1)
    Return = (data.BTC[i + 1] - data.BTC[i])/data.BTC[i]
    append!(Retrun_BTC,Return)
    Return = (data.ETH[i + 1] - data.ETH[i])/data.ETH[i]
    append!(Return_ETH,Return)
    Return = (data.XRP[i + 1] - data.XRP[i])/data.XRP[i]
    append!(Return_XRP,Return)
    Return = (data.SOL[i + 1] - data.SOL[i])/data.SOL[i]
    append!(Return_SOL,Return)
    Return = (data.ADA[i + 1] - data.ADA[i])/data.ADA[i]
    append!(Return_ADA,Return)
    Return = (data.DOGE[i + 1] - data.DOGE[i])/data.DOGE[i]
    append!(Return_DOGE,Return)
    Return = (data.MATIC[i + 1] - data.MATIC[i])/data.MATIC[i]
    append!(Return_MATIC,Return)
    Return = (data.AVAX[i + 1] - data.AVAX[i])/data.AVAX[i]
    append!(Return_AVAX,Return)
    if Return > 0
        append!(NOP_BTC,1)
    else Return < 0
        append!(NOP_BTC,0)
    end
end
println(Retrun_BTC,NOP_BTC)
return_ETH = 1
return_XRP = 1
return_SOL = 1
return_ADA = 1
return_AVAX = 1
return_LUNA = 1
retrun_DOT = 1
return_DOGE = 1
return_MATIC = 1 
for i in 1:(182)
    retrun_ETH = return_ETH * (1 + Return_ETH[i])
    return_ADA = return_ADA * (1 + Return_ADA[i]) 
    retrun_DOGE = return_DOGE * (1 + Return_DOGE[i])
    retrun_XRP = return_XRP * (1 + Return_XRP[i])
    retrun_SOL = return_SOL* (1 + Return_SOL[i])
    retrun_ETH = return_ETH * (1 + Return_AVAX[i])
    retrun_MATIC = return_MATIC * (1 + Return_MATIC[i])
end
return_ETH