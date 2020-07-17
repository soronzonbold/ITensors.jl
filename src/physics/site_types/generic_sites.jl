
function op!(Op::ITensor,
             ::OpName"Id",
             ::SiteType,
             s::Index)
  for n=1:dim(s)
    Op[n,n] = 1.0
  end
end

op!(Op::ITensor,
    ::OpName"F",
    st::SiteType,
    s::Index) = op!(Op,OpName("Id"),st,s)

