Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B00F54F2CA
	for <lists@lfdr.de>; Fri, 17 Jun 2022 10:25:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55164403BF;
	Fri, 17 Jun 2022 08:25:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55164403BF
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=uaATgRzU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SZ554eATQhpB; Fri, 17 Jun 2022 08:25:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6A5A040424;
	Fri, 17 Jun 2022 08:25:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A5A040424
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 03C0DC002D;
	Fri, 17 Jun 2022 08:25:12 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CC9B0C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 08:25:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9FDBB417A5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 08:25:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FDBB417A5
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=uaATgRzU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kryfw0THno_s
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 08:25:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F04C41798
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com
 [IPv6:2607:f8b0:4864:20::b35])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F04C41798
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 08:25:08 +0000 (UTC)
Received: by mail-yb1-xb35.google.com with SMTP id i15so1252212ybp.1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 01:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ahV1cHVQfBK19oRcEQmKS7L6P4sfLt4RP4Xt7GwmowY=;
 b=uaATgRzUdgIH86lMrqTh73PkhO4vh0pH601wTMPCkzACjPoFzCcD++87K4YlySHz8e
 uacSpLK6C8EGDJW2OPqKzEn0VJ77vKyZo90N2BOYzCxkAvS/gPMUWfYhftyJPLKFBWWJ
 N3/Zj3ru1yS8cqU4QfI3jU1CtAuUi+sbdOGw0M3dGNiHPaLtHU0emNPxvGcEDiXUR0iz
 ovx/aoDTMGQPERKGhqTa/7bcz8Hx6EXaqphrAtmogdxXxW133nWXb2G7b76RRVo6V1E/
 5N8oQU6BPh4jmsGiGW4spZs//8wi6OHkzlhG1FNX5t12TvFroIs8Mk4lMkAfLce+9J97
 Y2lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ahV1cHVQfBK19oRcEQmKS7L6P4sfLt4RP4Xt7GwmowY=;
 b=My9F6K90EwZq6I9es2LtOYiOJbER2q67L/nIumKQRMjHi02JwKhpUlLyUC5GeS31Jx
 JNcF7m/g+FmsRvQrpPFmvBlhGu44QaXDqu/Us/XqYtzIDOIKNKMWn42wes8AQLUdwimj
 WD4sGuHrPrYMTApG578MVECoT5pKRySWpNkuoHm89U0EB8CxWm7s5WBs2xWLGfssL3qu
 lFcRwSx35ueUhakS8JsoFxqk7woLumsh5ou8EGTlzymWW4BcTgLCSEJZpjJwqQR8hQBs
 8LA2BZm6W939S3bF/IdoxvtMogSDtHW10VfszlQtLbco/p+u7XzkoceCKyJACU9YbleA
 uqiw==
X-Gm-Message-State: AJIora/YnPOPtFW2pwyHk1C/+dppH2HipbE+Ny0Q3sdbcrqzsKvo1LB4
 sRlHvKQ/lIC5jgAW97AoRhzCKiUPT91g/aZKI+Sq+g==
X-Google-Smtp-Source: AGRyM1sBiV/w/cOjkseuvsWg8k9k6KByGf/RuXR3+s3IqM5QFGRLc3ndJU6Lu8TGIjRQED1w9AYV4ZHbo5XaVmY9YXE=
X-Received: by 2002:a25:2642:0:b0:664:c89e:b059 with SMTP id
 m63-20020a252642000000b00664c89eb059mr9696673ybm.369.1655454307992; Fri, 17
 Jun 2022 01:25:07 -0700 (PDT)
MIME-Version: 1.0
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
 <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
 <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
 <20220616125128.68151432@gandalf.local.home>
 <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
 <nycvar.YFH.7.76.2206170947520.14340@cbobk.fhfr.pm>
In-Reply-To: <nycvar.YFH.7.76.2206170947520.14340@cbobk.fhfr.pm>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 17 Jun 2022 10:24:56 +0200
Message-ID: <CACRpkdaHdTXE1C6E8uttTPf=+OyrcfFf7UzfEL=gEaTMd29oog@mail.gmail.com>
To: Jiri Kosina <jikos@kernel.org>
Cc: Luca Weiss <luca@z3ntu.xyz>, "Paul E. McKenney" <paulmck@kernel.org>,
 ksummit-discuss@lists.linuxfoundation.org,
 Peter Zijlstra <peterz@infradead.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Christoph Hellwig <hch@lst.de>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
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

On Fri, Jun 17, 2022 at 9:54 AM Jiri Kosina <jikos@kernel.org> wrote:
> On Thu, 16 Jun 2022, James Bottomley wrote:
>
> > > If you want a "stable ebpf program" then you submit it upstream and
> > > we can make sure that it works with any internal API changes, the
> > > same way we do for modules. Those with out-of-tree modules will have
> > > the technical debt of changing every time a new kernel release is
> > > out, and so should out-of-tree bpf programs.
> >
> > Assuming eBPF takes off, that would have some poor maintainer managing
> > the whole of the compatibility changes for the entire eBPF ecosystem
> > ... I really don't think that's scalable.
>
> I nevertheless still see this as the best and only option we have; that
> is, have an infrastructure in the kernel tree for maintaining eBPF
> programs, somehow sorted per subsystem so that it mirrors the standard
> maintainership / subsystem structure proper, and have the maintainers
> responsible for keeping the eBPF programs related to their subsystem in
> sync with the internal changes happening in the subsystem.

It's similar to what we have for Device Tree bindings already,
and those are in many cases handled by the relevant subsystem
maintainer, both review and merge.

> At the end of the day, it will be the subsystem maintainers themsleves
> accepting the program into the tree in the first place, so it's not like
> they are receiving responsibility for something they never wanted in the
> first place. So we'll probably end up with subsystems with many eBPF
> programs, and also subsystems with zero. Similarly to tracepoints.

The concern is that as subsystem maintainers had to learn YAML
to deal with device tree bindings, they now have to learn eBPF
syntax, and there is also Rust in the kernel around the corner to
learn.

Plenty of languages to learn. Oh well, they keep us on the move.

Yours,
Linus Walleij
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
