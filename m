Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D466654E08D
	for <lists@lfdr.de>; Thu, 16 Jun 2022 14:09:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1CD460B0A;
	Thu, 16 Jun 2022 12:09:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bpmDw4ESV3lZ; Thu, 16 Jun 2022 12:09:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2E8FE610FD;
	Thu, 16 Jun 2022 12:09:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BBECBC002D;
	Thu, 16 Jun 2022 12:09:38 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C6DB3C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 12:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A659341A33
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 12:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pX-WftMuBk_9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 12:09:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EB6041A2E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 12:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655381374;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1IgUCs7IfTIUvr92HprBkUxx3RPggT701kcbE+YjHYE=;
 b=NwkTuxwmcVQ48MgObC8313g07/5gUf74UfVVKs+NshFbJNWQskJ/MDwtFvYDW4M+pyniUc
 jtbslPjagK5r8DhkrfXnXz+c8o1mkbVDBFcOp/hcCDANFYMUE7hzRzyAlLiobPrurnn2tt
 Y08KASIGRsW9fOVZhWhwBZpCjjUdwlw=
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com
 [209.85.210.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-593-GEX8LHCKMtyelMF-J80IRg-1; Thu, 16 Jun 2022 08:09:33 -0400
X-MC-Unique: GEX8LHCKMtyelMF-J80IRg-1
Received: by mail-pf1-f199.google.com with SMTP id
 y66-20020a62ce45000000b0051bb4d19f5fso787625pfg.18
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 05:09:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1IgUCs7IfTIUvr92HprBkUxx3RPggT701kcbE+YjHYE=;
 b=ftziYVVLBfOwUWi+XTBtDZ+QCbn9vUPaMAjsmfjRtv31Iu2gL8jAe/P+R4KMnVX30O
 JFSLTaVBCoCii8YMW9RlYGqpnr2fDONilMO/5aE02B9I8KoM+Kzd6t9lk7pzogKdnxCP
 fwT9QlIBFgH/jn4iHW8akxRlY99atyX/S6a9sCMC4bdS7AIgooSMyNYvJgeUKhAFFSKz
 hXtKOuyoucVvEEa/3m+LTUZ11l/45LVXauE9UN0isC+wMjtuoq6+8bmqsksMakm4lXtR
 rX+olMAMdmpsLoykVrNpwqiXomb1zC2tkZqwA4ceb4lhOMIVYA1r/aAOlvGYi2tsvLwx
 7w2g==
X-Gm-Message-State: AJIora/zoJl/ap0K7UFotWGlnyHYaLYrjzbusYXThjN6yyDMKEnGghez
 /5BpoaGyrIjC7GoCbnEmyKILcrzKnm7liMvX8F1kaLftThccWss7Dm1jhVC74iQMjB7xc40mvYL
 ZhEp2hLlypuIMmGllSME9KIggY6jnfH4gpCJLUACRJ74R1YTEy9eI3aqisA==
X-Received: by 2002:a17:902:c403:b0:167:4a9f:2785 with SMTP id
 k3-20020a170902c40300b001674a9f2785mr4114847plk.67.1655381372259; 
 Thu, 16 Jun 2022 05:09:32 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1tojsUHPbXxZw2yUU0xBuBcclLizs8OSYO9jVSKbNseJlcM37XskDUdALaUHI3vpzHO+SCkjNPFc8f6FGxUGVM=
X-Received: by 2002:a17:902:c403:b0:167:4a9f:2785 with SMTP id
 k3-20020a170902c40300b001674a9f2785mr4114825plk.67.1655381371934; Thu, 16 Jun
 2022 05:09:31 -0700 (PDT)
MIME-Version: 1.0
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <CAO-hwJJmW_STS=nT22n4pcaZf9gz953K4o2vhgmq-ig4OzxOLg@mail.gmail.com>
 <nycvar.YFH.7.76.2206160959080.14340@cbobk.fhfr.pm>
 <CACRpkdY24aHp+iJschxZzTC4wyX51qH028YY++LZOMu94COeZQ@mail.gmail.com>
In-Reply-To: <CACRpkdY24aHp+iJschxZzTC4wyX51qH028YY++LZOMu94COeZQ@mail.gmail.com>
From: Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date: Thu, 16 Jun 2022 14:09:20 +0200
Message-ID: <CAO-hwJJzwbzB4=h4EUN3MaGnu7xRRm-5_yn0Bg5v3zYmz1D0fQ@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=btissoir@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Bartosz Golaszewski <brgl@bgdev.pl>, Christoph Hellwig <hch@lst.de>,
 Luca Weiss <luca@z3ntu.xyz>
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

On Thu, Jun 16, 2022 at 1:38 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Thu, Jun 16, 2022 at 10:02 AM Jiri Kosina <jikos@kernel.org> wrote:
> > On Wed, 15 Jun 2022, Benjamin Tissoires wrote:
> >
> > > One point that was also raised in the various HID-BPF patch series is
> > > that for "hardware enablement" like support, the eBPF programs would be
> > > in-tree, and automatically loaded by the kernel itself.
> > >
> > > Alexei has some ideas on how to implement that, I had others, but the
> > > hallway track discussions showed that everybody has a different idea on
> > > the automatic mechanism, but it is a requirement and worth discussing :)
> > >
> > > Which means that in that case, eBPF would be a more convenient way for
> > > users to fix their device, without having to rely on a full or partial
> > > kernel recompilation.
>
> Convenient for some definition of convenient. I might be biased in asking
> how much harder it is to set up a kernel compile, rebuild a module
> and run a few insmod/rmmod to find a quirk compared to setting up
> the eBPF compiler and figure out how to compile and push in such
> programs.
>
> I guess I could be convinced.

The plan is to forward to the end user the sources, of course, but
also the binary blob. The binary can be checked that it is doing the
correct thing because it's not so much of a black box and we can
easily check that it is the one built from the source. For extra check
the maintainer can also sign the binary.

And for the end user, it is thus: 1. trust your kernel maintainer (see
above if you don't), and 2. drop the binary in the file system and
forget. So no compilation involved :)

>
> > That definitely does solve one of the issues. It's basically following the
> > model of perf, where the ABI must not be kept intact, because the user(s)
> > of it are in-tree and released in lockstep with the ABI changes.
>
> I agree, I would actually go so far as to taint the kernel if programs that are
> not in-tree are used. That is fine for the goal here: users can create new
> eBPF snippets and debug them, but they can't ship them because then
> the kernel gets tainted, so they MUST be submitted upstream.
>
> Do you think we could do this? Pushing taint in the face of people who
> don't follow our established contribution process is essentially the big
> hammer we have to stop fragmentation.

I would like to have that too. The in-kernel eBPF binaries are using a
different path to be loaded so I would assume this is OK to
differentiate, but I'll leave it to Alexei to give a more definitive
answer.

Cheers,
Benjamin

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
