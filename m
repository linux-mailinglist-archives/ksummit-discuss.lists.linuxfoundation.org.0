Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D485506B6
	for <lists@lfdr.de>; Sat, 18 Jun 2022 22:44:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCB8660BA4;
	Sat, 18 Jun 2022 20:44:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCB8660BA4
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.a=rsa-sha256 header.s=mail header.b=NacexL0x
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LAA4UUHi86RL; Sat, 18 Jun 2022 20:44:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 184E560B4A;
	Sat, 18 Jun 2022 20:44:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 184E560B4A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9A64BC002D;
	Sat, 18 Jun 2022 20:44:23 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BEEFCC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 20:44:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 993C18293D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 20:44:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 993C18293D
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com
 header.a=rsa-sha256 header.s=mail header.b=NacexL0x
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Za5sB4ftMJ2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 20:44:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB8138291C
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB8138291C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 20:44:20 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id AA8C7383;
 Sat, 18 Jun 2022 22:44:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1655585057;
 bh=K4u8WFor8vX7uohoYj54m59JD2L0GY80nCd8/aH0raA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NacexL0xdyCInKa2+JWKOYxig7D/YWC6TSSgY936rsTFafzAUPgbZejuNTmBJJoie
 Phz1w6aW02cjVUu3bCkpZoknEl6RMJD7A8x4+sAYUmsTmSbdW7IUc5SyfJLtXOPqeg
 QQPENjN2pP3pqEuY5xzIvu/MhIvHFuoBPqQ1N2m4=
Date: Sat, 18 Jun 2022 23:44:03 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Message-ID: <Yq45E0yUEypGPhzi@pendragon.ideasonboard.com>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
Cc: ksummit@lists.linux.dev,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Rust
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Sat, Jun 18, 2022 at 11:42:09PM +0300, Laurent Pinchart wrote:
> Hi Miguel,
> 
> On Sat, Jun 18, 2022 at 10:33:01PM +0200, Miguel Ojeda wrote:
> > The effort to add Rust support to the kernel is ongoing. There has
> > been progress in different areas during the last year, and there are
> > several topics that could benefit from discussion:
> > 
> >   - Dividing the `kernel` crate into pieces, dependency management
> > between internal crates, writing crates in the rest of the kernel
> > tree, etc.
> > 
> >   - Whether to allow dependencies on external crates and vendoring of
> > useful third-party crates.
> > 
> >   - Toolchain requirements in the future and status of Rust unstable features.
> > 
> >   - The future of GCC builds: upcoming compilers, their status and
> > ETAs, adding the kernel as a testing case for them...
> > 
> >   - Steps needed for further integration in the different kernel CIs,
> > running tests, etc.
> > 
> >   - Documentation setup on kernel.org and integration between
> > Sphinx/kernel-doc and rustdoc (this can be part of the documentation
> > tech topic submitted earlier by Jon).
> > 
> >   - Discussion with prospective maintainers that want to use Rust for
> > their subsystem.
> 
> All previous topics but this one are technical. To restore the balance a
> bit (and also because I believe it's important to the success of this
> project :-)), I'd like to also discuss the impact on the kernel
> maintenance at large, beyond just the maintainers who opt in to be early
> adopters of rust in their subsystem.

This may be better addressed as part of the maintainers summit (I've
just seen your proposal for that event), but I'm concerned that the
audience there will be very restricted due to the size of the event.

-- 
Regards,

Laurent Pinchart
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
