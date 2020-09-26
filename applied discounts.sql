select od.OrderID,
cast(round(sum((od.UnitPrice * od.Quantity) - ((od.UnitPrice * od.Quantity) * od.Discount)),
2) as numeric(36,2)) as Subtotal
from [Order Details] od
group by od.OrderID