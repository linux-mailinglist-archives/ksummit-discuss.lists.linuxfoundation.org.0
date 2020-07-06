Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2242158E6
	for <lists@lfdr.de>; Mon,  6 Jul 2020 15:56:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B20A5892B5;
	Mon,  6 Jul 2020 13:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iEkUk8x4gVS6; Mon,  6 Jul 2020 13:55:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A12E8917D;
	Mon,  6 Jul 2020 13:55:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D3E2EC016F;
	Mon,  6 Jul 2020 13:55:36 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9192CC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 03:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 79F9A88504
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 03:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WLDAk9lUMFSZ
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 03:18:39 +0000 (UTC)
X-Greylist: delayed 00:05:05 by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 02F398746B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 03:18:38 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id f139so40344742wmf.5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 05 Jul 2020 20:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nr50V7tn4Q86r235t3i6fTqGi0eaGxnf83LBZQTEWJ4=;
 b=IVgCIdZ1fdyJ/ueZWXvNLujhD/ItQZmfywlnzlVUzj+QJMzwEGuIugD99RDKVCO8yD
 BbF9C4isTrmHGMPCIPtVz7K6fslSXe0FsAuDoDkrcH1HIHWVzh2ytCipq/wdVlMLI6jT
 QdGrlarHQN7K13Wb/uTZell3eXj7NOvl5N8yE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nr50V7tn4Q86r235t3i6fTqGi0eaGxnf83LBZQTEWJ4=;
 b=BOmpveKfAq9pLStyX0wUBAIQrsZ0qPkkefzqs2t3JJLFZPOMkqv6SyVuh3wpVS1eh8
 0KQ2fumjMm7/Drz7u+AmPX5rtPp7kz6Fd1+cSwJNEM/CG+C2TwsGXXUPZIIygy7qrb6w
 NQ9jJ9VsXjfsR1O+TGNGw21b7VggAZZMt6hfxBlnuEibC3gxANj5H8IFzVc173i3g4xs
 y8Q4rzgcFsHh0gcWIdAJ3CpWCNwEq9lcNXRE/zL+CPZnJtfTFLxyR7vmRZq4FvZItcms
 PfAZLsPMq5WvguytJqZzMg8TkOCIL/BSB67/MMSFsH4l75o57nF1Vzoj9hyLyepzzAUO
 BU3A==
X-Gm-Message-State: AOAM532CJIS8szP688cf9v3QQPKr9JLCucJM56Gpr/4SC2FsbDW7djwe
 qZApAEdA08ZBgjpwA5vMSEYT2UVJjB7/CDbbXgl7uM8C2dmPsQ==
X-Google-Smtp-Source: ABdhPJyN99BeGm9A2Rz/YYoo8bjGijPt5/+BN2tFGB56CztqStsKXLo+n5eHwOgVVwENrY+PfxE1PRUw1XTAhP2rD14=
X-Received: by 2002:a1c:1f09:: with SMTP id f9mr49533729wmf.137.1594005212447; 
 Sun, 05 Jul 2020 20:13:32 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200705045505.GA2962@1wt.eu>
In-Reply-To: <20200705045505.GA2962@1wt.eu>
From: Daniel Palmer <daniel@0x0f.com>
Date: Mon, 6 Jul 2020 12:13:21 +0900
Message-ID: <CAFr9PXnr0R71_o_0-Xmw0tcN9UUTMu1ahgp3ig5kE0LG=6N5WA@mail.gmail.com>
To: Willy Tarreau <w@1wt.eu>
X-Mailman-Approved-At: Mon, 06 Jul 2020 13:55:33 +0000
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
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

Hi Willy,

On Sun, 5 Jul 2020 at 13:55, Willy Tarreau <w@1wt.eu> wrote:

> I'm personally thinking that for a non-native speaker it's already
> difficult to find the best term to describe something,

I'm a nobody in the kernel world but this point made me think.

I'm a native English speaker but I don't live in an English speaking
place and my experience is that a lot of technology terms have been
directly imported from English into the local language almost as-is.

In my case master/slave have been directly transliterated into
Japanese as masuta and sureebu and exists like that in technical
documentation for example:
https://www.analog.com/jp/analog-dialogue/articles/introduction-to-spi-interface.html#

I can imagine that by changing terminology that has been in use for so
long that it's been imported into other languages directly or is
common enough that non-native speakers know what it means might have
exactly the opposite result by excluding people that aren't native
English speakers and can't decode synonyms that are obvious to a
native speaker.

Cheers,

Daniel
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
