select od.OrderID, sum(od.UnitPrice * od.Quantity) [Product Subtotal]
from [Order Details] od
group by od.OrderID