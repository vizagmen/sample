class MatrimonyController < ApplicationController
   # before_action :authenticate_user!  
	
	def index
		
	end
      
  def match_list
    @list = User.all 
  end


  def calculate_matched_pairs
    





    # matrimony_data = [

    # 	"ASHWINI"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 33, "KRUTIKA1"=> 27.5, "KRUTIKA-2,3,4" => 0, "ROHINI" => 24, 
    #       "MRUGASIRA-1,2"=> 23.5, "MRUGASIRA3,4"=> 26.5, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 32, "ASLESHA"=> 27, "MAGHA" => 27, "PUBBA"=> 31, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 0, "CHITA-1,2"=> 0, "CHITA-3,4"=> 22, "SWATHI"=> 27.5, 
    #       "VISKHA-1,2,3"=> 22, "VISKHA-4"=> 26.5, "ANURADHA" => 35, "JESTHA" => 0, "MOOLA" => 0,
    #       "PURVASHADA"=>32.5, "UTARSHADA-1" =>30, "UTARASHADA-2,3,4"=> 25, "SRAVANAM"=> 28.5, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 23.5, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 31, "REVATHI"=> 33
    #     },
     
    #   "BHARANI"=>
    # 	  {
    # 	  	"ASHWINI"=> 33, "BHARANI"=> 28, "KRUTIKA1"=> 27.5, "KRUTIKA-2,3,4" => 0, "ROHINI" => 24, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 27, "PUNARVASU-1,2,3" => 24.5, "PUNARVASU-4"=> 29.5,
    #       "PUSHYAMI"=> 0, "ASLESHA"=> 26, "MAGHA" => 26, "PUBBA"=> 0, "UTTARA"=> 30.5, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 20, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 29.5, 
    #       "VISKHA-1,2,3"=> 21, "VISKHA-4"=> 25.5, "ANURADHA" => 0, "JESTHA" => 28, "MOOLA" => 26.5,
    #       "PURVASHADA"=>0, "UTARSHADA-1" =>31, "UTARASHADA-2,3,4"=> 26, "SRAVANAM"=> 27.5, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 21, "PURVABHADRA-1,2,3"=> 23.5, "PURVABHADRA-4" => 29.5, "UTTARABHADRA"=> 25, "REVATHI"=> 34 
    #     },

    #     "KRUTIKA1"=>
    # 	  {
    # 	  	"ASHWINI"=> 27.5, "BHARANI"=> 27.5, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 0, "ROHINI" => 0, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 19, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 19, "PUNARVASU-4"=> 24,
    #       "PUSHYAMI"=> 27.5, "ASLESHA"=> 0, "MAGHA" => 0, "PUBBA"=> 23.5, "UTTARA"=> 24, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 0, "CHITA-1,2"=> 0, "CHITA-3,4"=> 25.5, "SWATHI"=> 0, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 0, "ANURADHA" => 27.5, "JESTHA" => 32.5, "MOOLA" => 30,
    #       "PURVASHADA"=>23, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 23.5,
    #       "DHANISTA-3,4"=> 23, "STHABISHAM" => 25.5, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 28, "UTTARABHADRA"=> 26.5, "REVATHI"=> 27.5 
    #     },

    #     "KRUTIKA-2,3,4"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 0, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 0, "ROHINI" => 0, 
    #       "MRUGASIRA-1,2"=> 26, "MRUGASIRA3,4"=> 23.5, "ARUDHRA"=> 23, "PUNARVASU-1,2,3" => 23.5, "PUNARVASU-4"=> 20.5,
    #       "PUSHYAMI"=> 24, "ASLESHA"=> 0, "MAGHA" => 0, "PUBBA"=> 0, "UTTARA"=> 19, 
    #       "UTTARA-2,3,4" => 24.5, "HASTA" => 27, "CHITA-1,2"=> 28.5, "CHITA-3,4"=> 27.5, "SWATHI"=> 0, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 0, "ANURADHA" => 25.5, "JESTHA" => 30.5, "MOOLA" => 0,
    #       "PURVASHADA"=>0, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 29,
    #       "DHANISTA-3,4"=> 27.5, "STHABISHAM" => 30, "PURVABHADRA-1,2,3"=> 21.5, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 22, "REVATHI"=> 23 
    #     },
    #     "ROHINI"=>
    # 	  {
    # 	  	"ASHWINI"=> 25, "BHARANI"=> 26, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 0, "ROHINI" => 0, 
    #       "MRUGASIRA-1,2"=> 33.5, "MRUGASIRA3,4"=> 31, "ARUDHRA"=> 31.5, "PUNARVASU-1,2,3" => 28, "PUNARVASU-4"=> 25,
    #       "PUSHYAMI"=> 27.5, "ASLESHA"=> 0, "MAGHA" => 0, "PUBBA"=> 26, "UTTARA"=> 24.5, 
    #       "UTTARA-2,3,4" =>30, "HASTA" => 30.5, "CHITA-1,2"=> 25, "CHITA-3,4"=> 24, "SWATHI"=> 0, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 0, "ANURADHA" => 31, "JESTHA" => 26, "MOOLA" => 0,
    #       "PURVASHADA"=>21, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 25.5,
    #       "DHANISTA-3,4"=> 24, "STHABISHAM" => 26.5, "PURVABHADRA-1,2,3"=> 30, "PURVABHADRA-4" => 27, "UTTARABHADRA"=> 27.5, "REVATHI"=> 0 
    #     },

    #     "MRUGASIRA-1,2"=>
    # 	  {
    # 	  	"ASHWINI"=> 24.5, "BHARANI"=> 0, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 26, "ROHINI" =>33.5 , 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 29, "PUNARVASU-1,2,3" => 27.5, "PUNARVASU-4"=> 24.5,
    #       "PUSHYAMI"=> 0, "ASLESHA"=> 21, "MAGHA" => 19.5, "PUBBA"=> 0, "UTTARA"=> 22, 
    #       "UTTARA-2,3,4" => 27.5, "HASTA" => 30, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 29, 
    #       "VISKHA-1,2,3"=> 23.5, "VISKHA-4"=> 24, "ANURADHA" => 0, "JESTHA" => 25.5, "MOOLA" => 0,
    #       "PURVASHADA"=>0, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 27, "SRAVANAM"=> 31.5, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 26 "PURVABHADRA-1,2,3"=> 27.5, "PURVABHADRA-4" => 24.5, "UTTARABHADRA"=> 0, "REVATHI"=> 28 
    #     },



    #     "MRUGASIRA3,4"=>
    # 	  {
    # 	  	"ASHWINI"=> 27.5, "BHARANI"=> 0, "KRUTIKA1"=> 20, "KRUTIKA-2,3,4" => 24.5, "ROHINI" => 32, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 31.5, "PUNARVASU-1,2,3" => 30, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 0, "ASLESHA"=> 0, "MAGHA" => 23.5, "PUBBA"=> 0, "UTTARA"=> 26, 
    #       "UTTARA-2,3,4" => 29, "HASTA" => 31.5, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 31.5, 
    #       "VISKHA-1,2,3"=> 26, "VISKHA-4"=> 0, "ANURADHA" => 0, "JESTHA" => 0, "MOOLA" => 23,
    #       "PURVASHADA"=>0, "UTARSHADA-1" =>23.5, "UTARASHADA-2,3,4"=> 25, "SRAVANAM"=> 29.5, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 27.5, "PURVABHADRA-1,2,3"=> 29, "PURVABHADRA-4" => 23.5, "UTTARABHADRA"=> 0, "REVATHI"=> 27
    #     },

    #     "ARUDHRA"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 28, "KRUTIKA1"=> 19.5, "KRUTIKA-2,3,4" => 24,"ROHINI" => 32.5,
    #       "MRUGASIRA-1,2"=> 30,"MRUGASIRA3,4"=> 31.5,"UDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 19, "ASLESHA"=> 0, "MAGHA" => 24, "PUBBA"=> 30, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 0, "CHITA-1,2"=> 25.5, "CHITA-3,4"=> 25.5, "SWATHI"=> 33, 
    #       "VISKHA-1,2,3"=> 25.5, "VISKHA-4"=> 0, "ANURADHA" => 0, "JESTHA" => 0, "MOOLA" => 0,
    #       "PURVASHADA"=>29.5, "UTARSHADA-1" =>27, "UTARASHADA-2,3,4"=> 28.5, "SRAVANAM"=> 30, "DHANISTA-1,2"=> 22.5,
    #       "DHANISTA-3,4"=> 24.5, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 27.5, "REVATHI"=> 26.5 
    #     },
    #     "PUNARVASU-1,2,3"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 25.5, "KRUTIKA1"=> 20, "KRUTIKA-2,3,4" => 24.5, "ROHINI" => 29, 
    #       "MRUGASIRA-1,2"=> 28.5, "MRUGASIRA3,4"=> 30, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 19.5, "ASLESHA"=> 0, "MAGHA" => 22.5, "PUBBA"=> 26.5, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 0, "CHITA-1,2"=> 25, "CHITA-3,4"=> 25, "SWATHI"=> 32.5, 
    #       "VISKHA-1,2,3"=> 25, "VISKHA-4"=> 0, "ANURADHA" => 20, "JESTHA" => 0, "MOOLA" => 0,
    #       "PURVASHADA"=>28, "UTARSHADA-1" =>24.5, "UTARASHADA-2,3,4"=> 26, "SRAVANAM"=> 30.5, "DHANISTA-1,2"=> 22,
    #       "DHANISTA-3,4"=> 24, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 25, "REVATHI"=> 26 
    #     },
    #     "PUNARVASU-4"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 28.5, "KRUTIKA1"=> 23, "KRUTIKA-2,3,4" => 19.5, "ROHINI" => 24, 
    #       "MRUGASIRA-1,2"=> 23.5, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 32.5, "ASLESHA"=> 29.5, "MAGHA" => 24.5, "PUBBA"=> 28.5, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 0, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 25, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 24, "ANURADHA" => 32.5, "JESTHA" => 0, "MOOLA" => 0,
    #       "PURVASHADA"=>28.5, "UTARSHADA-1" =>25, "UTARASHADA-2,3,4"=> 23.5, "SRAVANAM"=> 28, "DHANISTA-1,2"=> 19.5,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 30.5, "REVATHI"=> 31.5 
    #     },
    #     "PUSHYAMI"=>
    # 	  {
    # 	  	"ASHWINI"=> 31, "BHARANI"=> 0, "KRUTIKA1"=> 26.5, "KRUTIKA-2,3,4" => 23, "ROHINI" => 26.5, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 32.5,
    #       "PUSHYAMI"=> 0, "ASLESHA"=> 29, "MAGHA" => 27, "PUBBA"=> 0, "UTTARA"=> 31.5, 
    #       "UTTARA-2,3,4" => 25.5, "HASTA" => 28, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 27.5, 
    #       "VISKHA-1,2,3"=> 19, "VISKHA-4"=> 25.5, "ANURADHA" => 0, "JESTHA" => 28, "MOOLA" => 24,
    #       "PURVASHADA"=>0, "UTARSHADA-1" =>28.5, "UTARASHADA-2,3,4"=> 27, "SRAVANAM"=> 26.5, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 29.5, "UTTARABHADRA"=> 0, "REVATHI"=> 34
    #     },
    #     "ASLESHA"=>
    # 	  {
    # 	  	"ASHWINI"=> 26, "BHARANI"=> 26, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 0, "ROHINI" => 0, 
    #       "MRUGASIRA-1,2"=> 20, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 32.5,
    #       "PUSHYAMI"=> 29, "ASLESHA"=> 0, "MAGHA" => 0, "PUBBA"=> 26, "UTTARA"=> 26.5, 
    #       "UTTARA-2,3,4" => 26.5, "HASTA" => 22, "CHITA-1,2"=> 22, "CHITA-3,4"=> 24, "SWATHI"=> 0, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 0, "ANURADHA" => 29, "JESTHA" => 34, "MOOLA" => 30,
    #       "PURVASHADA"=>26, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 26,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 19.5, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 25.5, "UTTARABHADRA"=> 28, "REVATHI"=> 0 
    #     },
    #     "MAGHA"=>
    # 	  {
    # 	  	"ASHWINI"=> 27, "BHARANI"=> 26, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 0, "ROHINI" => 0, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 22.5 "ARUDHRA"=> 23, "PUNARVASU-1,2,3" => 21.5, "PUNARVASU-4"=> 25.5,
    #       "PUSHYAMI"=> 28, "ASLESHA"=> 0, "MAGHA" => 0, "PUBBA"=> 30, "UTTARA"=> 26.5, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 0, "CHITA-1,2"=> 21.5, "CHITA-3,4"=> 24.5, "SWATHI"=> 0, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 0, "ANURADHA" => 27, "JESTHA" => 32, "MOOLA" => 31,
    #       "PURVASHADA"=>26, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=>23.5 , "STHABISHAM" => 26, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 25.5, "UTTARABHADRA"=> 28, "REVATHI"=> 0 
    #     },
    #     "PUBBA"=>
    # 	  {
    # 	  	"ASHWINI"=> 31, "BHARANI"=> 0, "KRUTIKA1"=> 23.5, "KRUTIKA-2,3,4" => 0, "ROHINI" => 25, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 29, "PUNARVASU-1,2,3" => 25.5, "PUNARVASU-4"=> 29.5,
    #       "PUSHYAMI"=> 0, "ASLESHA"=> 26, "MAGHA" => 30, "PUBBA"=> 0, "UTTARA"=> 32.5, 
    #       "UTTARA-2,3,4" => 21.5, "HASTA" => 22, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 25, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 24.5, "ANURADHA" => 0, "JESTHA" => 26, "MOOLA" => 25,
    #       "PURVASHADA"=>0, "UTARSHADA-1" =>29.5, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 20, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 20, "PURVABHADRA-1,2,3"=> 23.5, "PURVABHADRA-4" => 31.5, "UTTARABHADRA"=> 0, "REVATHI"=> 33 
    #     },
    #     "UTTARA"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 30.5, "KRUTIKA1"=> 24, "KRUTIKA-2,3,4" => 0, "ROHINI" => 23.5, 
    #       "MRUGASIRA-1,2"=> 21, "MRUGASIRA3,4"=> 25, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 32.5, "ASLESHA"=> 26.5, "MAGHA" => 26.5, "PUBBA"=> 32.5, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 0, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 24.5, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 21, "ANURADHA" => 30.5, "JESTHA" => 0, "MOOLA" => 0,
    #       "PURVASHADA"=>30.5, "UTARSHADA-1" =>29, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 34.5, "REVATHI"=> 31.5 
    #     },
    #     "UTTARA-2,3,4"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 19.5, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 24.5, "ROHINI" => 30, 
    #       "MRUGASIRA-1,2"=> 27.5, "MRUGASIRA3,4"=> 28, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 26.5, "ASLESHA"=> 20.5, "MAGHA" => 0, "PUBBA"=> 22.5, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 0, "CHITA-1,2"=> 23, "CHITA-3,4"=> 22, "SWATHI"=> 31.5, 
    #       "VISKHA-1,2,3"=> 22, "VISKHA-4"=> 0, "ANURADHA" => 26, "JESTHA" => 0, "MOOLA" => 0,
    #       "PURVASHADA"=>28, "UTARSHADA-1" =>26.5, "UTARASHADA-2,3,4"=> 28, "SRAVANAM"=> 28.5, "DHANISTA-1,2"=> 21,
    #       "DHANISTA-3,4"=> 22, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 28, "REVATHI"=> 25 
    #     },
    #     "HASTA"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 21, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 27, "ROHINI" => 30.5, 
    #       "MRUGASIRA-1,2"=> 30, "MRUGASIRA3,4"=> 30.5, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 29, "ASLESHA"=> 23, "MAGHA" => 19, "PUBBA"=> 23, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 28, "CHITA-1,2"=> 26.5, "CHITA-3,4"=> 25.5, "SWATHI"=> 35, 
    #       "VISKHA-1,2,3"=> 25.5, "VISKHA-4"=> 20, "ANURADHA" => 27.5, "JESTHA" => 0, "MOOLA" => 0,
    #       "PURVASHADA"=>28.5, "UTARSHADA-1" =>27, "UTARASHADA-2,3,4"=> 28, "SRAVANAM"=> 31, "DHANISTA-1,2"=> 25.5,
    #       "DHANISTA-3,4"=> 26.5, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 27.5, "REVATHI"=> 28.5 
    #     },
    #     "CHITA-1,2"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 0, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 28.5, "ROHINI" => 26, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 25.5, "PUNARVASU-1,2,3" => 24, "PUNARVASU-4"=>19 ,
    #       "PUSHYAMI"=> 0, "ASLESHA"=> 25.5, "MAGHA" => 22.5, "PUBBA"=> 0, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 24, "HASTA" => 26.5, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 25.5, 
    #       "VISKHA-1,2,3"=> 32, "VISKHA-4"=> 26.5, "ANURADHA" => 0, "JESTHA" => 25, "MOOLA" => 27,
    #       "PURVASHADA"=>0, "UTARSHADA-1" =>21.5, "UTARASHADA-2,3,4"=> 23, "SRAVANAM"=> 23.5, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 29.5, "PURVABHADRA-1,2,3"=> 24, "PURVABHADRA-4" => 19.5, "UTTARABHADRA"=> 0, "REVATHI"=> 20 
    #     },
    #     "CHITA-3,4"=>
    # 	  {
    # 	  	"ASHWINI"=> 23, "BHARANI"=> 0, "KRUTIKA1"=> 26, "KRUTIKA-2,3,4" => 28.5, "ROHINI" => 26, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 26.5, "PUNARVASU-1,2,3" => 25, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 0, "ASLESHA"=> 25, "MAGHA" => 25.5, "PUBBA"=> 0, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 26.5, "HASTA" => 0, "CHITA-1,2"=> 0, "CHITA-3,4"=> 26.5, "SWATHI"=> 33, 
    #       "VISKHA-1,2,3"=> 22, "VISKHA-4"=> 0, "ANURADHA" => 20.5, "JESTHA" => 27, "MOOLA" => 0,
    #       "PURVASHADA"=>21.5, "UTARSHADA-1" =>24, "UTARASHADA-2,3,4"=> 24.5,"SRAVANAM"=> 0, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 31.5, "PURVABHADRA-1,2,3"=> 26, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 0, "REVATHI"=> 0 
    #     },
    #     "SWATHI"=>
    # 	  {
    # 	  	"ASHWINI"=> 28.5, "BHARANI"=> 30.5, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 0, "ROHINI" => 0, 
    #       "MRUGASIRA-1,2"=> 30, "MRUGASIRA3,4"=> 31.5, "ARUDHRA"=> 33, "PUNARVASU-1,2,3" => 32.5, "PUNARVASU-4"=> 26,
    #       "PUSHYAMI"=> 28.5, "ASLESHA"=> 0, "MAGHA" => 0, "PUBBA"=> 26, "UTTARA"=> 25.5, 
    #       "UTTARA-2,3,4" => 32,5, "HASTA" => 36, "CHITA-1,2"=> 26.5, "CHITA-3,4"=> 26.5, "SWATHI"=> 28, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 0, "ANURADHA" => 23, "JESTHA" => 0, "MOOLA" => 24.5,
    #       "PURVASHADA"=>28.5, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 26.5,
    #       "DHANISTA-3,4"=> 28.5, "STHABISHAM" => 27, "PURVABHADRA-1,2,3"=> 32.5, "PURVABHADRA-4" => 19, "UTTARABHADRA"=> 20.5, "REVATHI"=> 0 
    #     },
    #     "VISKHA-1,2,3"=>
    # 	  {
    # 	  	"ASHWINI"=> 23, "BHARANI"=> 23, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 0, "ROHINI" => 0, 
    #       "MRUGASIRA-1,2"=> 24.5, "MRUGASIRA3,4"=> 26, "ARUDHRA"=> 26.5, "PUNARVASU-1,2,3" => 25, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 20, "ASLESHA"=> 0, "MAGHA" => 0, "PUBBA"=> 20.5, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 24, "HASTA" => 26.5, "CHITA-1,2"=> 33, "CHITA-3,4"=> 33, "SWATHI"=> 0, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 0, "ANURADHA" => 0, "JESTHA" => 20.5, "MOOLA" => 27,
    #       "PURVASHADA"=>22, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 29,
    #       "DHANISTA-3,4"=> 31, "STHABISHAM" => 31.5, "PURVABHADRA-1,2,3"=> 26, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 0, "REVATHI"=> 0
    #     },
    #     "VISKHA-4"=>
    # 	  {
    # 	  	"ASHWINI"=> 24.5, "BHARANI"=> 24.5, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 0, "ROHINI" => 0, 
    #       "MRUGASIRA-1,2"=> 22, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 23,
    #       "PUSHYAMI"=> 24.5, "ASLESHA"=> 0, "MAGHA" => 0, "PUBBA"=> 24.5, "UTTARA"=> 21, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 20, "CHITA-1,2"=> 25.5, "CHITA-3,4"=> 21, "SWATHI"=> 0, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 0, "ANURADHA" => 26.5, "JESTHA" => 31.5, "MOOLA" => 28.5,
    #       "PURVASHADA"=>23.5, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 24.5,
    #       "DHANISTA-3,4"=> 23.5, "STHABISHAM" => 24, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 25, "UTTARABHADRA"=> 24.5, "REVATHI"=> 0 
    #     },
    #     "ANURADHA"=>
    # 	  {
    # 	  	"ASHWINI"=> 33, "BHARANI"=> 0, "KRUTIKA1"=> 20.5, "KRUTIKA-2,3,4" => 23.5, "ROHINI" => 29, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 19, "PUNARVASU-4"=> 31.5,
    #       "PUSHYAMI"=> 32, "ASLESHA"=> 28, "MAGHA" => 26, "PUBBA"=> 30, "UTTARA"=> 29.5, 
    #       "UTTARA-2,3,4" => 25, "HASTA" => 26.5, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 22
    #       "VISKHA-1,2,3"=> 0 "VISKHA-4"=> 26.5,"ANURADHA" => 0,"JESTHA" => 31,"MOOLA" => 24,
    #       "PURVASHADA"=>0, "UTARSHADA-1" =>28.5, "UTARASHADA-2,3,4"=> 25, "SRAVANAM"=> 27.5, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 22.5, "PURVABHADRA-1,2,3"=> 24, "PURVABHADRA-4" => 30.5, "UTTARABHADRA"=> 0, "REVATHI"=> 33 
    #     },
    #     "JESTHA"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 27, "KRUTIKA1"=> 30.5, "KRUTIKA-2,3,4" => 28.5, "ROHINI" => 25, 
    #       "MRUGASIRA-1,2"=> 23.5, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 27, "ASLESHA"=> 33, "MAGHA" => 31, "PUBBA"=> 26, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 0, "CHITA-1,2"=> 24, "CHITA-3,4"=> 19.5, "SWATHI"=> 0, 
    #       "VISKHA-1,2,3"=> 19.5, "VISKHA-4"=> 31.5, "ANURADHA" => 31, "JESTHA" => 28, "MOOLA" => 0,
    #       "PURVASHADA"=>26, "UTARSHADA-1" =>24.5, "UTARASHADA-2,3,4"=> 21, "SRAVANAM"=> 22.5, "DHANISTA-1,2"=> 26,
    #       "DHANISTA-3,4"=> 25, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 29, "REVATHI"=> 28 
    #     },
    #     "MOOLA"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 27.5, "KRUTIKA1"=> 30, "KRUTIKA-2,3,4" => 0, "ROHINI" => 0, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 22, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 25, "ASLESHA"=> 31, "MAGHA" => 31, "PUBBA"=> 26, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 22, "HASTA" => 0, "CHITA-1,2"=> 26, "CHITA-3,4"=> 26, "SWATHI"=> 23.5, 
    #       "VISKHA-1,2,3"=> 26, "VISKHA-4"=> 29.5, "ANURADHA" => 25, "JESTHA" => 0, "MOOLA" => 0,
    #       "PURVASHADA"=>29, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 19.5,
    #       "DHANISTA-3,4"=> 28.5, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 27, "REVATHI"=> 27 
    #     },
    #     "PURVASHADA"=>
    # 	  {
    # 	  	"ASHWINI"=> 32.5, "BHARANI"=> 0, "KRUTIKA1"=> 23, "KRUTIKA-2,3,4" => 0, "ROHINI" => 20, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 28.5, "PUNARVASU-1,2,3" => 27, "PUNARVASU-4"=> 29.5,
    #       "PUSHYAMI"=> 0, "ASLESHA"=> 26, "MAGHA" => 26, "PUBBA"=> 0, "UTTARA"=> 30.5, 
    #       "UTTARA-2,3,4" => 27, "HASTA" => 27.5, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 27.5, 
    #       "VISKHA-1,2,3"=> 20, "VISKHA-4"=> 23.5, "ANURADHA" => 0, "JESTHA" => 26, "MOOLA" => 28,
    #       "PURVASHADA"=>0, "UTARSHADA-1" =>33.5, "UTARASHADA-2,3,4"=> 21.5, "SRAVANAM"=> 23, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 26, "PURVABHADRA-1,2,3"=> 29.5, "PURVABHADRA-4" => 30.5, "UTTARABHADRA"=> 0, "REVATHI"=> 32 
    #     },
    #     "UTARSHADA-1"=>
    # 	  {
    # 	  	"ASHWINI"=> 30, "BHARANI"=> 31, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 0, "ROHINI" => 0, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 22.5, "ARUDHRA"=> 26, "PUNARVASU-1,2,3" => 24.5, "PUNARVASU-4"=> 27,
    #       "PUSHYAMI"=> 29.5, "ASLESHA"=> 0, "MAGHA" => 0, "PUBBA"=> 29.5, "UTTARA"=> 29, 
    #       "UTTARA-2,3,4" => 25.5, "HASTA" => 26, "CHITA-1,2"=> 19.5, "CHITA-3,4"=> 19.5, "SWATHI"=> 0, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 0, "ANURADHA" => 29.5, "JESTHA" => 24.5, "MOOLA" => 25.5,
    #       "PURVASHADA"=>33.5, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 22, "PURVABHADRA-1,2,3"=> 23.5, "PURVABHADRA-4" => 28, "UTTARABHADRA"=> 29, "REVATHI"=> 0 
    #     },


    #     "UTARASHADA-2,3,4"=>
    # 	  {
    # 	  	"ASHWINI"=> 26, "BHARANI"=> 27, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 0, "ROHINI" => 0, 
    #       "MRUGASIRA-1,2"=> 27, "MRUGASIRA3,4"=> 24, "ARUDHRA"=> 27.5, "PUNARVASU-1,2,3" => 26, "PUNARVASU-4"=> 25.5,
    #       "PUSHYAMI"=> 28, "ASLESHA"=> 0, "MAGHA" => 0, "PUBBA"=> 19.5, "UTTARA"=> 19, 
    #       "UTTARA-2,3,4" => 28, "HASTA" => 28.5, "CHITA-1,2"=> 22, "CHITA-3,4"=> 22, "SWATHI"=> 0, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 0, "ANURADHA" => 27, "JESTHA" => 22, "MOOLA" => 0,
    #       "PURVASHADA"=>22.5, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 25,
    #       "DHANISTA-3,4"=> 22, "STHABISHAM" => 23.5, "PURVABHADRA-1,2,3"=> 28, "PURVABHADRA-4" => 29, "UTTARABHADRA"=> 30.5, "REVATHI"=> 0 
    #     },
    #      "SRAVANAM"=>
    # 	  {
    # 	  	"ASHWINI"=> 29.5, "BHARANI"=> 28.5, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 0, "ROHINI" => 0, 
    #       "MRUGASIRA-1,2"=> 31.5, "MRUGASIRA3,4"=> 28.5, "ARUDHRA"=> 29, "PUNARVASU-1,2,3" => 29.5, "PUNARVASU-4"=> 29,
    #       "PUSHYAMI"=> 27.5, "ASLESHA"=> 0, "MAGHA" => 0, "PUBBA"=> 21, "UTTARA"=> 19.5, 
    #       "UTTARA-2,3,4" => 28.5, "HASTA" => 31, "CHITA-1,2"=> 23.5, "CHITA-3,4"=> 23.5, "SWATHI"=> 0, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 0, "ANURADHA" => 29.5, "JESTHA" => 24.5, "MOOLA" => 0,
    #       "PURVASHADA"=>24, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 27.5,
    #       "DHANISTA-3,4"=> 24.5, "STHABISHAM" => 27, "PURVABHADRA-1,2,3"=> 28.5, "PURVABHADRA-4" => 29.5, "UTTARABHADRA"=> 31, "REVATHI"=> 0 
    #     },
    #      "DHANISTA-1,2"=>
    # 	  {
    # 	  	"ASHWINI"=> 21, "BHARANI"=> 0, "KRUTIKA1"=> 24.5, "KRUTIKA-2,3,4" => 29, "ROHINI" => 25.5, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 21.5, "PUNARVASU-1,2,3" => 21, "PUNARVASU-4"=> 20.5,
    #       "PUSHYAMI"=> 0, "ASLESHA"=> 27, "MAGHA" => 19.5, "PUBBA"=> 0, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 21, "HASTA" => 25.5, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 25.5, 
    #       "VISKHA-1,2,3"=> 28, "VISKHA-4"=> 26.5, "ANURADHA" => 0, "JESTHA" => 28, "MOOLA" => 20.5,
    #       "PURVASHADA"=>0, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 25, "SRAVANAM"=> 27.5, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 28.5, "PURVABHADRA-1,2,3"=> 24, "PURVABHADRA-4" => 25, "UTTARABHADRA"=> 0, "REVATHI"=> 23.5 
    #     },
    #      "DHANISTA-3,4"=>
    # 	  {
    # 	  	"ASHWINI"=> 20.5, "BHARANI"=> 0, "KRUTIKA1"=> 24, "KRUTIKA-2,3,4" => 28.5, "ROHINI" => 25, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 24.5, "PUNARVASU-1,2,3" => 24, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 0, "ASLESHA"=> 0, "MAGHA" => 24.5, "PUBBA"=> 0, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 23, "HASTA" => 27.5, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 28.5, 
    #       "VISKHA-1,2,3"=> 31, "VISKHA-4"=> 24.5, "ANURADHA" => 0, "JESTHA" => 26, "MOOLA" => 29.5,
    #       "PURVASHADA"=>0, "UTARSHADA-1" =>23, "UTARASHADA-2,3,4"=> 23, "SRAVANAM"=> 25.5, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 31.5, "PURVABHADRA-1,2,3"=> 27, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 0, "REVATHI"=> 0
    #     },
    #      "STHABISHAM"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 23, "KRUTIKA1"=> 26.5, "KRUTIKA-2,3,4" => 31, "ROHINI" => 28.5, 
    #       "MRUGASIRA-1,2"=> 27, "MRUGASIRA3,4"=> 27.5, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 0, "ASLESHA"=> 20.5, "MAGHA" => 27, "PUBBA"=> 22, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 0, "CHITA-1,2"=> 30.5, "CHITA-3,4"=> 31.5, "SWATHI"=> 27, 
    #       "VISKHA-1,2,3"=> 31.5, "VISKHA-4"=> 25, "ANURADHA" => 23.5, "JESTHA" => 0, "MOOLA" => 0,
    #       "PURVASHADA"=>28, "UTARSHADA-1" =>25.5, "UTARASHADA-2,3,4"=> 25.5, "SRAVANAM"=> 28, "DHANISTA-1,2"=> 29.5,
    #       "DHANISTA-3,4"=> 31.5, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 0, "REVATHI"=> 0 
    #     },
    #      "PURVABHADRA-1,2,3"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 24.5, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 22.5, "ROHINI" => 31, 
    #       "MRUGASIRA-1,2"=> 28.5, "MRUGASIRA3,4"=> 29, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 0, "ASLESHA"=> 0, "MAGHA" => 0, "PUBBA"=> 24.5, "UTTARA"=> 0, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 0, "CHITA-1,2"=> 24, "CHITA-3,4"=> 25, "SWATHI"=> 32.5, 
    #       "VISKHA-1,2,3"=> 25, "VISKHA-4"=> 0, "ANURADHA" => 25, "JESTHA" => 0, "MOOLA" => 0,
    #       "PURVASHADA"=>30.5, "UTARSHADA-1" =>29, "UTARASHADA-2,3,4"=> 29, "SRAVANAM"=> 29.5, "DHANISTA-1,2"=> 25,
    #       "DHANISTA-3,4"=> 27, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 20.5, "REVATHI"=> 0 
    #     },
    #      "PURVABHADRA-4"=>
    # 	  {
    # 	  	"ASHWINI"=> 0, "BHARANI"=> 28.5, "KRUTIKA1"=> 22, "KRUTIKA-2,3,4" => 0, "ROHINI" => 26, 
    #       "MRUGASIRA-1,2"=> 23.5 "MRUGASIRA3,4"=> 22.5, "ARUDHRA"=> 0, "PUNARVASU-1,2,3" => 0, "PUNARVASU-4"=> 0,
    #       "PUSHYAMI"=> 29, "ASLESHA"=> 29.5, "MAGHA" => 24.5,"PUBBA"=> 24.5, "UTTARA"=> 30.5, 
    #       "UTTARA-2,3,4" => 0, "HASTA" => 0, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 0, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 25, "ANURADHA" => 31.5, "JESTHA" => 0, "MOOLA" => 0,
    #       "PURVASHADA"=>29.5, "UTARSHADA-1" =>28, "UTARASHADA-2,3,4"=> 28, "SRAVANAM"=> 28.5, "DHANISTA-1,2"=> 24,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 0, "UTTARABHADRA"=> 31.5, "REVATHI"=> 29.5
    #     },
    #      "UTTARABHADRA"=>
    # 	  {
    # 	  	"ASHWINI"=> 30, "BHARANI"=> 23, "KRUTIKA1"=> 25.5, "KRUTIKA-2,3,4" => 21, "ROHINI" => 26.5, 
    #       "MRUGASIRA-1,2"=> 0, "MRUGASIRA3,4"=> 0, "ARUDHRA"=> 26.5, "PUNARVASU-1,2,3" => 24, "PUNARVASU-4"=> 30.5,
    #       "PUSHYAMI"=> 0, "ASLESHA"=> 27, "MAGHA" => 27, "PUBBA"=> 0, "UTTARA"=> 33.5, 
    #       "UTTARA-2,3,4" => 27, "HASTA" => 26.5, "CHITA-1,2"=> 0, "CHITA-3,4"=> 0, "SWATHI"=> 19.5, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 24.5, "ANURADHA" => 0, "JESTHA" => 29, "MOOLA" => 25,
    #       "PURVASHADA"=>0, "UTARSHADA-1" =>29.5, "UTARASHADA-2,3,4"=> 29.5, "SRAVANAM"=> 30, "DHANISTA-1,2"=> 0,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 19.5, "PURVABHADRA-4" => 31.5, "UTTARABHADRA"=> 0, "REVATHI"=> 33 
    #     },
    #      "REVATHI"=>
    # 	  {
    # 	  	"ASHWINI"=> 32, "BHARANI"=> 33, "KRUTIKA1"=> 0, "KRUTIKA-2,3,4" => 0, "ROHINI" => 0, 
    #       "MRUGASIRA-1,2"=> 27, "MRUGASIRA3,4"=> 26, "ARUDHRA"=> 25.5, "PUNARVASU-1,2,3" => 25, "PUNARVASU-4"=> 31.5,
    #       "PUSHYAMI"=> 34, "ASLESHA"=> 0, "MAGHA" => 0, "PUBBA"=> 32, "UTTARA"=> 30.5, 
    #       "UTTARA-2,3,4" => 24, "HASTA" => 27.5, "CHITA-1,2"=> 19, "CHITA-3,4"=> 0, "SWATHI"=> 0, 
    #       "VISKHA-1,2,3"=> 0, "VISKHA-4"=> 0, "ANURADHA" => 34, "JESTHA" => 29, "MOOLA" => 26,
    #       "PURVASHADA"=>31, "UTARSHADA-1" =>0, "UTARASHADA-2,3,4"=> 0, "SRAVANAM"=> 0, "DHANISTA-1,2"=> 22.5,
    #       "DHANISTA-3,4"=> 0, "STHABISHAM" => 0, "PURVABHADRA-1,2,3"=> 0, "PURVABHADRA-4" => 29.5, "UTTARABHADRA"=> 33, "REVATHI"=> 28
    #     }
      
    # ]

  end

def life_partner_match_report
   # @user1_date_number, @user1_fate_number = luckynum(1)
    #@user2_date_number, @user2_fate_number = luckynum(user2)

    @result1 = numerology_matching_report1(1, 14)
    @result2 = numerology_matching_report1(3, 31)

    if @result1 == "matched" && @result2 == "matched"

        @msg = "NOT MATCHED (CROSSED CHECKED)"
            raise @msg.inspect         
    elsif @result1 == "matched" && @result2 == "Not Matched"
        @msg = "matched in step1 "
       raise @msg.inspect
    elsif @result1 == "not matched" && @result2 == "matched"
        @msg = "matched in step1"
        raise @msg.inspect
    else         
        @msg = "go to next matching"
        raise @msg.inspect
        @second_match = numerology_matching_report2(@user1_date_number, @user2_date_number)
            if @second_match == "pair matched"
            @final_numerology_result = "matched in numerology"
            else
             @final_numerology_result = "Not matched in numerology"
            end    
    end

   

end
 


 def numerology_matching_report2(user1_date_number, user2_date_number)
  
   @user1_date = params[:user1_date_number]
   @user2_date = params[:user2_date_number]
   @user1_date_day_result = params[:user1_date_number].to_i
   @user2_date_day_result = params[:user2_date_number].to_i
    
    while @user1_date_number_day>9
     tmp=@user1_date_number_day.to_s.split('').map { |e| e.to_i  }
      @user1_date_number_day=tmp.inject(0, :+)
    end
    
     while @user2_date_number_day > 9
         tmp1 = @user1_date_number_day.to_s.split('').map { |e| e.to_i  }
         @user2_date_number=tmp1.inject(0, :+)
     end
     
     @res1 = numerology_matching_report2_logic(@user1_date_number_day, @user2_date_number_day)
     @res2 = numerology_matching_report2_logic(@user2_date_number_day, @user1_date_number_day)
      
     if @res1 == "matched" || @res2 == "matched"
       @message = "pair matched" 
       
     else
       @message = "pair not matched"

     end




   #table two logic
 end


 



  def numerology_matching_report(fate, date)
   
   # @user1_lucky_number = 1
    #@user2_lucky_number = 4
    #==========
    #user1

    #user_date_number, user_fate_number = params[:date],params[:fate]
    user_date_number, user_fate_number = date,fate
    case user_fate_number
     
<<<<<<< HEAD
     when 1
          if [4,13,22,31,5,14,23,6,15,24].include?(user_date_number)
=======
    when 1
        if [4,13,22,31,5,14,23,6,15,24].include?(@user2_lucky_number.date)
>>>>>>> 4fb9f0dcf17d7ce4145f017d6742591f21ef5bd2
             @msg = "matched" 
             
        else
             @msg = "Not Matched"
<<<<<<< HEAD
          end
     when 2                                       
     
         if [3,12,21,30,5,14,23,8,17,26].include?(@user2_lucky_number)
=======
        end
    when 2                                       
     
        if [3,12,21,30,5,14,23,8,17,26].include?(@user2_lucky_number.date)
>>>>>>> 4fb9f0dcf17d7ce4145f017d6742591f21ef5bd2
             @msg = "matched" 
             
        else
             @msg = "Not Matched"
        end

     when 3                                      
     
<<<<<<< HEAD
         if [6,15,24,8,17,26,9,18,27 ].include?(@user2_lucky_number)
             @msg = "matched" 
=======
        if [6,15,24,8,17,26,9,18,27 ].include?(@user2_lucky_number.date)
            @msg = "matched" 
>>>>>>> 4fb9f0dcf17d7ce4145f017d6742591f21ef5bd2
             
        else
            @msg = "Not Matched"
        end

     when 4                                     
     
<<<<<<< HEAD
         if [ 1,10,19,28,7,16,25,9,18,27].include?(@user2_lucky_number)
             @msg = "matched" 
=======
        if [ 1,10,19,28,7,16,25,9,18,27].include?(@user2_lucky_number.date)
          @msg = "matched" 
>>>>>>> 4fb9f0dcf17d7ce4145f017d6742591f21ef5bd2
             
        else
            @msg = "Not Matched"
        end

    when 5                                     
     
         if [2,11,20,29,3,12,21,30,8,17,26].include?(@user2_lucky_number)
             @msg = "matched" 
             
          else
             @msg = "Not Matched"
          end

    when 6                                     
     
         if [3,12,21,30,6,15,24,9,18,27 ].include?(@user2_lucky_number)
             @msg = "matched" 
             
          else
             @msg = "Not Matched"
          end

    when 7                                    
     
         if [1,10,19,28,4,13,22,31,8,17,26].include?(@user2_lucky_number)
             @msg = "matched" 
             
          else
             @msg = "Not Matched"
          end


    when 8                                     
     
         if [2,11,20,29,4,13,22,31,5,14,23].include?(@user2_lucky_number)
             @msg = "matched" 
             
          else
             @msg = "Not Matched"
          end

    when 9                                     
     
         if [3,12,21,30,6,15,24,7,16,25].include?(@user2_lucky_number)
             @msg = "matched" 
             
          else
             @msg = "Not Matched"
          end
    
   else 
    @msg= "enter correct format"
       
  end
<<<<<<< HEAD
  
end
=======
end





>>>>>>> 4fb9f0dcf17d7ce4145f017d6742591f21ef5bd2

private 
  def luckynum(user)
      # raise params[:your_dob][:month].to_i.inspect
    @lucky1 = params[:your_dob][:day].to_i
    while @lucky1>9
     tmp=@lucky1.to_s.split('').map { |e| e.to_i  }
      @lucky1=tmp.inject(0, :+)
    end
    arr = []
    arr << params[:your_dob][:day].to_i
    arr << params[:your_dob][:month].to_i
    arr << params[:your_dob][:year].to_i
    @lucky2 = arr.inject(0, :+)

   while @lucky2 >=10
      tmp=@lucky2.to_s.split('').map { |e| e.to_i  }
      @lucky2=tmp.inject(0, :+)
   end

    return @lucky1,@lucky2

  end

  def numerology_matching_report2_logic(user1_date, user2_date)
   
    @user1_date =  params[:user1_date]
    @user2_date =  params[:user2_date]

    case @user1_date
      
      when 1 
         if [1,2,4,8,9].include?(@user2_date)
          @msg = "matched"
         else
          @msg = "not matched"
         end 
      

      when 2 
         if [1,2,7,8].include?(@user2_date)
          @msg = "matched"
         else
          @msg = "not matched"
         end 

      when 3
         if [3,5,6,7,9].include?(@user2_date)
          @msg = "matched"
         else
          @msg = "not matched"
         end 
      

       when 4 
         if [1,4,8,6].include?(@user2_date)
          @msg = "matched"
         else
          @msg = "not matched"
         end    

       when 5
         if [3,5,9].include?(@user2_date)
          @msg = "matched"
         else
          @msg = "not matched"
         end 
      

       when 6 
         if [3,4,6,9].include?(@user2_date)
          @msg = "matched"
         else
          @msg = "not matched"
         end 
      

       when 7
         if [2,3,6,7].include?(@user2_date)
          @msg = "matched"
         else
          @msg = "not matched"
         end 
      

       when 8
         if [1,2,4].include?(@user2_date)
          @msg = "matched"
         else
          @msg = "not matched"
         end 
      

      when 9 
         if [1,3,6,8].include?(@user2_date)
          @msg = "matched"
         else
          @msg = "not matched"
         end 
      
  end

end
end
