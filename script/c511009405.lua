--Predaplant Cephalotus Snail
function c511009405.initial_effect(c)
--damage reduce
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_CONTINUOUS+EFFECT_TYPE_SINGLE)
	e1:SetCode(EVENT_PRE_BATTLE_DAMAGE)
	e1:SetCondition(c511009405.rdcon)
	e1:SetOperation(c511009405.rdop)
	c:RegisterEffect(e1)
	--battle indestructable
	local e2=Effect.CreateEffect(c)
	e2:SetType(EFFECT_TYPE_SINGLE)
	e2:SetCode(EFFECT_INDESTRUCTABLE_BATTLE)
	e2:SetCondition(c511009405.con)
	e2:SetValue(1)
	c:RegisterEffect(e2)
end
function c511009405.rdcon(e,tp,eg,ep,ev,re,r,rp)
	return ep==tp
end
function c511009405.rdop(e,tp,eg,ep,ev,re,r,rp)
	Duel.ChangeBattleDamage(ep,ev/2)
end

function c511009405.con(e,c)
	return e:GetHandler():IsAttackPos() 
end