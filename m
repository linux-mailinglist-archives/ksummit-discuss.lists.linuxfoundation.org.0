Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ED66B0EB
	for <lists@lfdr.de>; Tue, 16 Jul 2019 23:16:54 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CBAB4EB6;
	Tue, 16 Jul 2019 21:16:41 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0E00DE9B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Jul 2019 21:16:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from pokefinder.org (sauhun.de [88.99.104.3])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 83B4388E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Jul 2019 21:16:39 +0000 (UTC)
Received: from localhost (p54B330C4.dip0.t-ipconnect.de [84.179.48.196])
	by pokefinder.org (Postfix) with ESMTPSA id 7FB3F2C0398;
	Tue, 16 Jul 2019 23:16:37 +0200 (CEST)
Date: Tue, 16 Jul 2019 23:16:37 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190716211636.GA6679@kunai>
References: <20190706142738.GA6893@kunai> <20190714103509.2dd72c90@archlinux>
	<alpine.DEB.2.21.1907141157410.1669@nanos.tec.linutronix.de>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1907141157410.1669@nanos.tec.linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6296646476729266668=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============6296646476729266668==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tThc/1wpZn/ma/RB"
Content-Disposition: inline


--tThc/1wpZn/ma/RB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Even if we agree on a set of new tags the usage will still be based on
> individual interpretation, which brings us back to square one.

I agree. New tags won't help us much.

> So no, let's just accept that these things are subjective and apply common
> sense to make the best use of them.

I meanwhile do think, though, that for "best use" it will be helpful to
add my Rev-by to my SoB when I really did a full review (and not just
trusted other reviewers). To properly document the process of a patch.


--tThc/1wpZn/ma/RB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0uPrAACgkQFA3kzBSg
Kbay3g//cexc1WaXVyOFbbYopS42dG6P7TuBt7J4hkBODgB9J8lfMkURBRUz5uja
h8xSQKu6WKjd5bqu+2cqaFvgpgaPvfPDPVDxDCS0pMWRTuciAxjiJj9RNq66hRJs
7OfbVKTloN7ORiiH6EGmD4evGKdVzxzYJzDOe2zEIeuYb+2rsLkVx2GN0oUmBF9w
UEt9AA7JI4zQtYut6hHaVMkHzV3E0ckuuniqWZlwulRi9XuC1UE8mEs11pz3uWwH
UteWXdV/kq21oxNXpGqCn2oBS5AFkcPnlvsiS/LcQnpf4J6xn0oSFLUCQKiU8kM2
gLw7SR6tHBZFDAciOl13U3c645TenwrOcBKvsgiwMt9EKy+6ElvlNPHyiBBeU0V4
UZWD87Zw3bLo2YoQ+JrH5wlJE18PXxFbk26Qp0zjFWGIJqidogcXIbYJbedficb6
lER5uI4qFzXZQQ1e8o3lfaUPX2SCsPC2uqbs990jd5uFbaKdMmrk5qJYZZuA5b//
Ooy3QWAf27vd8lrfEjfVMAgh4GtM96QFALFHtyULroslyG53HfKoRt9thVqmW+AP
pyUGymbZNItQzYWX2frRQ3/aQbB5E0cucX+KCGUHhjHLSOkXQFlCYdDajORQEz+p
LX1cHxewMyq8kz7iaN8S05REQX1FIa3S6mSOq2RByqoDC1MMzJ4=
=qBvH
-----END PGP SIGNATURE-----

--tThc/1wpZn/ma/RB--

--===============6296646476729266668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============6296646476729266668==--
