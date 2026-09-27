# Merkle Tree :deciduous_tree:
> WAGMI, Keep Buidling!

## Verify with Less Space Occupation! :floppy_disk:

![](https://miro.medium.com/max/1400/0*aOKIp5OPJoSSx0Qa.png)

## What are Merkle Trees?

A Merkle tree is a type of hash tree in which each leaf node is labeled with the cryptographic hash of a data block, and each non-leaf node is labeled with the cryptographic hash of its child nodes' labels. The majority of hash tree implementations are binary (each node has two child nodes), but they can also have many more child nodes.

## Use Cases:

* IPFS
* Git
* Distributed databases such as AWS DynamoDB and Apache Cassandra use Merkle trees to control discrepancies

## Verification of Presence in Merkle Trees :mag_right:

![](https://miro.medium.com/max/1400/1*gp9RaSxleAb3f9uZngpl3A.png)

In the diagram above, let's think about what info must be given to the Verifier that will positively prove to the Verifier that K is part of the Merkle Tree.

* Value of K itself (so Verifier can compute H(K) on it's own)
* H(L), so the verifier can compute H(KL)
* H(IJ) so the verifier can compute H(IJKL)
* H(MNOP) so the verifier can compute H(IJKLMNOP)
* H(ABCDEFGH) so the verifier can compute H(ABCDEFGHIJKLMNOP)

![logo](https://i.imgur.com/nDe4iYS.png)


<!-- Markdown link & img dfn's -->
[wiki]:  https://www.learnweb3.io/tracks/senior
