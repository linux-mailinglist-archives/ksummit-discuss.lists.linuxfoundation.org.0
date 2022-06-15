Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 039E254C312
	for <lists@lfdr.de>; Wed, 15 Jun 2022 10:05:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5874241901;
	Wed, 15 Jun 2022 08:05:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LODv484pby_a; Wed, 15 Jun 2022 08:05:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 38154418FD;
	Wed, 15 Jun 2022 08:05:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D8A48C002D;
	Wed, 15 Jun 2022 08:05:29 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7544DC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 08:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 63D254028D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 08:05:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tub1geCPkw49
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 08:05:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 446AD4015A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 08:05:26 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id x38so19150086ybd.9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 01:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HmmOX4UCATqIjn65T3MSux3xoY3/WFMaQpG0DN7sH30=;
 b=ARKxm1ktTXpCBW63qWdDvhSs1RKJE8YrtIbSSNrLA23L6Rke+1za/o261oYxgRpr8W
 hX3cLBqeWccoazzyNHrxpd3nhNT1HlXT5HT1YrBLUgG6ecvIYs/0/o3w5cm5GvnKd2dI
 SLkijGI9wwI8VKSkMbTy2njYpULeI7HA4r/+QSrpluLI+N6CWA9V+zrU/1aGIaNQe5T5
 VHznIwDDnEIn+z3bwCLZmS0tEG2tkcFosz0AtPgSvHWuPO0yUnNIuxt9Sjk+pWfnr45M
 WJzNMkezdx9ivMFg0XF9TFk2t7uHMRJ5ehhVdDqv7f/wmvTtzeq9BfpgRNgfi/G0Vqnb
 zayg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HmmOX4UCATqIjn65T3MSux3xoY3/WFMaQpG0DN7sH30=;
 b=Oqii2HFAGBqv2VZLdNt6lrS3LcQTS1QYqrIHuxHL+xO1ogaJI6j1FOiGPW6kcqwBB+
 A42Er5Noh/lQarYHT+T8ipCKnvbcoOuF5dxRNwFEmyZAkmFwUu4w+cud0/oX+q9Bq3wi
 A4g4nRFgGSA4DuikxVssf9smfc7iT+6HMOmc4s7XWx3uH2S7IZJJnun8FYIwjUKE6K6g
 rhq/wqxycmF8gXxYLQv0Y0lk8YEmZuLdz5GRkU0eGYa8N4QSHNuvZXsHWp3AueVdS/Bm
 gYKJBk3tncdPjphuUKeXGOsFq8wYoyJKHYw8WwWSgJCgjXbb2d1XyxlmI7TaE41gQTfk
 +zbQ==
X-Gm-Message-State: AJIora8Tc7j2rgRKEJiosGb+Q+BeP+66EsKfXu+CORDlvwlb6kXCtZcc
 CL9AXGHHirVPVH9xJqNaNm5d2F/TCpHxx9OpAm8pdA==
X-Google-Smtp-Source: AGRyM1tI24SsUON+kWHmdjmlfXpFooytlkvjaOiJqS+JuP6pSqqKaumRABalNo/DRKCUM0arYalaLPqvqGzp9TR8jV4=
X-Received: by 2002:a25:650a:0:b0:663:461f:86f2 with SMTP id
 z10-20020a25650a000000b00663461f86f2mr9248263ybb.514.1655280325878; Wed, 15
 Jun 2022 01:05:25 -0700 (PDT)
MIME-Version: 1.0
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
In-Reply-To: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 15 Jun 2022 10:05:14 +0200
Message-ID: <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
To: Jiri Kosina <jkosina@suse.cz>
Cc: Luca Weiss <luca@z3ntu.xyz>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Christoph Hellwig <hch@lst.de>, ksummit-discuss@lists.linuxfoundation.org
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

On Wed, Jun 15, 2022 at 8:55 AM Jiri Kosina <jkosina@suse.cz> wrote:

> As everyone is pretty much aware, eBPF adoption is quickly expanding for
> various usecases in the kernel. For example, there has recently been
> effort invested into adding eBPF support to HID subsystem [1], in order to
> make adding quirks for specific devices easier, not requiring a "full"
> proper driver for devices that just need a tiny bit of special handling
> here and there but apart from that can be handled by the generic driver
> just fine.

I see your concern as subsystem maintainer not wanting HID to turn
into a dumping ground for various vendor extensions. I submitted
a Razer keyboard bling driver that was nixed with "put it in userspace",
i.e. using hidraw, and I was directed to the project called "razertest"
https://github.com/z3ntu/razer_test
https://patchwork.kernel.org/project/linux-input/patch/20181128222443.13062-1-linus.walleij@linaro.org/

One of the concerns raised was (Luca) "I wouldn't put too much functionality
into the kernel driver as new devices are being released all the time and it
would probably take very long for those patches to arrive at users of
non-rolling distros."

The problem with this is that while the kernel has a highway into *all*
distros and how many distros even carry "razer_test"? Not Fedora
for example. That surely has not reached users of any distro AFAICT.

So what we have here is three prominent HID contributors: Benjamin,
Luca and Jiri. One of you work for RedHat and one of you work for SuSE.
And yet none of your distributions have packaged Luca's userspace project?
Can't you see that this isn't working?

I feel HID is maybe missing the point that creating new userspace
projects is really hard and resource-craving, involving a lot of social
problem, process and lobbying compared to maintaining
a few more driver files in the kernel.

Referring people to misc half-adopted userspace projects for full support
of the hardware on their desk isn't really sustainable, no matter if
they use eBPF or not. (Asking them to go and create their own userspace
driver extension libraries is even less helpful.)

I once created libmtp for MTP communication with storage devices
such as all Android phones. In a way it is a success since it is
deployed in all distros and even used on Mac by Google for
accessing Android devices. Would I implement it today I would
seriously discuss with Greg to make this a kernel driver instead.
Simply because the kernel has more momentum, community
and attention. More bugs get fixed there, maintenance actually
happens. I'm really suspicious of other microkernel-like projects
such as libsane and cups as well, but they can talk for
themselves.

To me the big question is rather: does HID have a working userspace
project community outside of the kernel, which is adopted by all major
distributions? I know it is a chicken and egg problem, and that you
need to create something to get accepted but is there some
momentum in these projects?

At a minimum, do what Bartosz did for the libgpiod library that we
(reluctantly) developed for userspace GPIO access, and put the git
for the userspace on git.kernel.org so people know where to find it
and get the cuddly feeling that it has something to do with the official
Linux kernel.

> While there are many proponents of "eBPF is good for everything and your
> grandma" aproach, this opinion is not universally shared. One big risk is
> that this will eventually lead to possibility of having whole drivers /
> core code written in eBPF, which could potentially lead to decreased
> maintainability and supportability, also due to big fragmentation of the
> code (eBPF programs might not necessarily be shipped together with the
> kernel codebase).
(...)
> I feel like we are currently lacking a clear borderline, defining what is
> still acceptable by the community to be implemented in terms of eBPF, and
> what is over the line as it'd be causing big supportability and
> maintainability concerns (see e.g. Christoph's concern to the HID eBPF
> implementation implications [2]).

I must say from my own experience I side with Christoph here.

I just want to add some code to the kernel so my hardware works
(better) out of the box, is that really so voluminous for the HID maintainers
to maintain that it need to be referred to userspace?

I kind of feel like rebasing and resubmitting my razer driver from 2018
to raise a discussion here. Will I be asked to rewrite it in eBPF
if I do?

Yours,
Linus Walleij
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
