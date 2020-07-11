Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C078421C46A
	for <lists@lfdr.de>; Sat, 11 Jul 2020 15:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BE98422843;
	Sat, 11 Jul 2020 13:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c8Hv5ffBgn8F; Sat, 11 Jul 2020 13:31:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id E6C9D227FA;
	Sat, 11 Jul 2020 13:31:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ADE9BC08A5;
	Sat, 11 Jul 2020 13:31:03 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 07A4DC016F;
 Sat, 11 Jul 2020 13:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EAA23872EF;
 Sat, 11 Jul 2020 13:31:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X667KxHfy0MO; Sat, 11 Jul 2020 13:31:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 312C7872C7;
 Sat, 11 Jul 2020 13:31:00 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id A696E1C0BD2; Sat, 11 Jul 2020 15:30:53 +0200 (CEST)
Date: Sat, 11 Jul 2020 15:30:52 +0200
From: Pavel Machek <pavel@denx.de>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20200711133052.GA6407@amd>
References: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>,
 Dave Airlie <airlied@redhat.com>
Subject: Re: [Ksummit-discuss] [PATCH v2] CodingStyle: Inclusive Terminology
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7638947921791714715=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>


--===============7638947921791714715==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="UlVJffcvxoiEqYs2"
Content-Disposition: inline


--UlVJffcvxoiEqYs2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed 2020-07-08 00:23:59, Dan Williams wrote:
> Linux maintains a coding-style and its own idiomatic set of terminology.
> Update the style guidelines to recommend replacements for the terms
> master/slave and blacklist/whitelist.
>=20

> +replacements for 'blacklist/whitelist' are: 'denylist/allowlist' or
> +'blocklist/passlist'.

I don't see what is "non inclusive" about blacklist and whitelist...

Plus, please grep kernel for actual usages. blocklist/denylist is
_not_ suitable replacement for kernel use of blacklist.

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--UlVJffcvxoiEqYs2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl8JvwwACgkQMOfwapXb+vKaeACdEuEPBbuseLU7rRRWibY5FYQ8
/BEAnRKhc9QvpKTqxo3q27Du59cpsTcJ
=siog
-----END PGP SIGNATURE-----

--UlVJffcvxoiEqYs2--

--===============7638947921791714715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============7638947921791714715==--
