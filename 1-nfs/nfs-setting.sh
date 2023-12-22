mkdir /data/k8sdata -p

cat >> /etc/exports <<EOF
/data/k8sdata *(rw,no_root_squash)
EOF

systemctl restart nfs-server && systemctl enable nfs-server