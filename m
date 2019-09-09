Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B38AD888
	for <lists@lfdr.de>; Mon,  9 Sep 2019 14:09:43 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A5026FA9;
	Mon,  9 Sep 2019 12:09:26 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A7BB5FF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:09:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31E0781A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=0XahagjCpYEzf/OhbFmIlVc6R7zcSSVHwUas/N06Llk=;
	b=qr/nwFVwIbkC4itf/8eGnCqMI
	ZDbRsDrmtZ3Ke+5st2MidM9BKFL6xB9at2ds7kcRR+IOWlrs4Vs+p9ujkkxnE/e5B6Yf6AsnXZV+e
	xAtIW10tlUoKZmvMYOwVWRxWWJnC61BAwRHArJJH+A57WFdewtbBtbaxj8X1x6QZabh9E=; 
Received: from [148.69.85.38] (helo=fitzroy.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa
	(TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <broonie@sirena.org.uk>)
	id 1i7ITs-0002Gr-Ru; Mon, 09 Sep 2019 12:09:16 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
	id 1526CD02D18; Mon,  9 Sep 2019 13:09:16 +0100 (BST)
Date: Mon, 9 Sep 2019 13:09:16 +0100
From: Mark Brown <broonie@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Message-ID: <20190909120916.GE2036@sirena.org.uk>
References: <CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
	<CAHrFyr6rQHiQAY4Wcv4WzUS2B5tBfrnWvyTjD4ktHvsEBMxkCw@mail.gmail.com>
	<CAD=FV=XGySHprMN+dv6dDKmuTQXnmYg5NStyaOJg+KdNUOFZsQ@mail.gmail.com>
	<CAHk-=whxp0Vm5V6MtaRNC0_ou0=U4-+Y7Ktzq6osU8JgHy_xhQ@mail.gmail.com>
	<20190824230447.GA5163@mit.edu> <20190825031143.GA2590@kroah.com>
	<20190827105153.GB23391@sirena.co.uk>
	<871rwpdgys.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
In-Reply-To: <871rwpdgys.fsf@mpe.ellerman.id.au>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
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
Content-Type: multipart/mixed; boundary="===============2575118312674570663=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============2575118312674570663==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y2zxS2PfCDLh6JVG"
Content-Disposition: inline


--y2zxS2PfCDLh6JVG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 09, 2019 at 06:14:19PM +1000, Michael Ellerman wrote:
> Mark Brown <broonie@kernel.org> writes:

> > What I'm doing for this is that when I apply the patch I save a
> > git note with the message ID and various other things then when I
> > push the patch out and generate the "applied, thanks" e-mail I
> > look for the git note and use that.

> I was doing something similar with git notes, but the beauty of a
> Link: that includes the message id is it gives you everything you need
> to send those "applied" mails without any extra state.

Yeah, you can definitely do that - I originally did it that way
but converted to notes because I want to make sure that I can
send out the applied mails if the push succeeds even if the
network is slow or spotty.

> I also have a local message-id <=> patchwork id mapping, and that means
> I can also do the patchwork state update based purely off the Link: tag.

...

> If only the patchwork maintainers weren't all volunteers they could get
> that implemented some time ;)

Indeed.

--y2zxS2PfCDLh6JVG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl12QOsACgkQJNaLcl1U
h9Bwcwf/QEFmUL/xMjQSOfTGrUTI6Ln3LmZJAuT+ZGirN/VdV86NSDmNZOtcwxq+
f9TeUHt2V4ErDel5YNvIpsPDR7hhReEVfkORgjzkNv7R4TctyLX6QmHEXEh6311D
ERrkrB8yh2YoAg5mbK1qZQagWuLUYxlGJurp8UBRImBi3COkJjVeIV3Ax+DW3Bsr
db6zH/HanY2S2KdH/yCo224/KvBof+gNqN95n4AXK/a0pUMYAzsEjgbF7lBG5TEK
NHGz9Gq+BG1k2P9Gb6gR+PvRNjiialdH4pfhrB5QUIKqqgg6HBBL9nE16QxepSHp
LepU0JX9xIP71cWnXcKBdXfdayokgw==
=RFB9
-----END PGP SIGNATURE-----

--y2zxS2PfCDLh6JVG--

--===============2575118312674570663==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============2575118312674570663==--
