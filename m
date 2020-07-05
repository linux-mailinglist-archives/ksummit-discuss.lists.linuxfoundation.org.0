Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD1D2149D0
	for <lists@lfdr.de>; Sun,  5 Jul 2020 05:23:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A0C2E87096;
	Sun,  5 Jul 2020 03:23:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tH7nTf0PzSLC; Sun,  5 Jul 2020 03:23:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68F74870B5;
	Sun,  5 Jul 2020 03:23:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 190C0C0733;
	Sun,  5 Jul 2020 03:23:11 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 05615C0733;
 Sun,  5 Jul 2020 03:23:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F01088704B;
 Sun,  5 Jul 2020 03:23:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cw8kIyTuIRwp; Sun,  5 Jul 2020 03:23:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EC09D87035;
 Sun,  5 Jul 2020 03:23:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id BEFF98EE12E;
 Sat,  4 Jul 2020 20:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1593919387;
 bh=hvwML/qk7j/LDv4jikG6wAaRn8p7ch1lsOGpjbuXuaA=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=topv1XwfJJxfkEaSqNL26bC/8ZxwsuUu7DSPUbEH8jTLBvk2S+eqrPAhYVeETyCMI
 dfzbPBsURGFpr/SwEqlhcVc+QvyQNJKVj2vAQAvGKrXELbSGqbXWiITvPoJPyf0ob+
 gqErXaVmRVSFDBswsbUfdXdhP6GW/cZOf49smMzo=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id HoBB9uIwWM0p; Sat,  4 Jul 2020 20:23:07 -0700 (PDT)
Received: from [153.66.254.194] (unknown [50.35.76.230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 3EBA48EE07B;
 Sat,  4 Jul 2020 20:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1593919387;
 bh=hvwML/qk7j/LDv4jikG6wAaRn8p7ch1lsOGpjbuXuaA=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=topv1XwfJJxfkEaSqNL26bC/8ZxwsuUu7DSPUbEH8jTLBvk2S+eqrPAhYVeETyCMI
 dfzbPBsURGFpr/SwEqlhcVc+QvyQNJKVj2vAQAvGKrXELbSGqbXWiITvPoJPyf0ob+
 gqErXaVmRVSFDBswsbUfdXdhP6GW/cZOf49smMzo=
Message-ID: <1593919384.7058.22.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Dave Airlie <airlied@gmail.com>, Stephen Rothwell <sfr@canb.auug.org.au>
Date: Sat, 04 Jul 2020 20:23:04 -0700
In-Reply-To: <CAPM=9txud3xg+++205X9s9R5wnxobpNSJWLUu=bp8BOhnX_8hQ@mail.gmail.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200705064348.71d4d51f@canb.auug.org.au>
 <CAPM=9txOgRYc7RM3fzohB4=Ejcp_xMGLBX_OOCOD=r+W6D678A@mail.gmail.com>
 <20200705121216.2ce2dd46@canb.auug.org.au>
 <CAPM=9txud3xg+++205X9s9R5wnxobpNSJWLUu=bp8BOhnX_8hQ@mail.gmail.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
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

On Sun, 2020-07-05 at 12:56 +1000, Dave Airlie wrote:
> On Sun, 5 Jul 2020 at 12:12, Stephen Rothwell <sfr@canb.auug.org.au>
> wrote:
[...]
> > > As for the non-black slavery, others have never pointed this out
> > 
> > (I did not say "non-black")
> > 
> 
> Sorry I misdirected what you said a bit, and I did misinterpret as
> Australia also has it's own indigenous slavery issues,
> 
> I was trying to stop the "white slavery" is a thing crew from turning
> up on this.
> 
> Apologies for accidentally implying something what you hadn't said.

Not at all, thank you; you just gave a precise illustration of my
point: putting statements like this in the kernel acts as a magnet for
this type of disagreement ... and not just from honourable people. 
Developers can honestly disagree about this sort of thing, while
supporting the aim of using inclusive language.  That's why this file
shouldn't be in the kernel tree.

James
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
