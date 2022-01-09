//go:build !testnet
// +build !testnet

package bsfconfig

const (
	CoinType       = 118
	FundraiserPath = "44'/118'/0'/0/1"
)

var (
	AccountAddressPrefix   = "ogn"
	AccountPubKeyPrefix    = "ognpub"
	ValidatorAddressPrefix = "ognval"
	ValidatorPubKeyPrefix  = "ognvalpub"
	ConsNodeAddressPrefix  = "ogncon"
	ConsNodePubKeyPrefix   = "ognconpub"
	HumanCoinUnit          = "gen"
	BaseCoinUnit           = "basegen" // 10^-18 AKA "davidson"
	CroExponent            = 18
	Name                   = "Origen Supply Chain"
)
