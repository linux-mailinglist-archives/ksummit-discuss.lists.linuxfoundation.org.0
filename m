Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0ABD54E01C
	for <lists@lfdr.de>; Thu, 16 Jun 2022 13:38:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 758C460B89;
	Thu, 16 Jun 2022 11:38:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yhmm7JO9iVb4; Thu, 16 Jun 2022 11:38:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D205060C34;
	Thu, 16 Jun 2022 11:38:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6E9F5C002D;
	Thu, 16 Jun 2022 11:38:11 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A2C5CC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 11:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7DDDB403AA
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 11:38:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Gzy_C7D8QCY
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 11:38:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com
 [IPv6:2607:f8b0:4864:20::1132])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A155340520
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 11:38:08 +0000 (UTC)
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-3137316bb69so10955877b3.10
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 04:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Px9Cef7axZAZx5zE08VlZral6zTy15bazpojZ7PToOY=;
 b=gSlOttqXKM8Ms4f2VxmfpH/8PlEnCkRzK5FZKB+FHR5ABhh3f2f/r/0aiFmbmi2cP8
 w0PAsyJuu0JhcLykCmIXnoBspPi9MISMwKPrebcfuLv1RQuDwivQ72wq0l5fbCyKBtE+
 WPRRAwEzNZUje3e6iM2aXdUEUAv9C1El1o+11LEfvtjC7c0W0JHiB3NOsUVdq8Gn6gnB
 s4jwqMjhBvh+mV2y7RjpyAz3hfVlKh+52UiHvyRy1ZC3NK5FIwnaCH2ydxjcDGv/6yf/
 3eBtivznV0XEz4vn2f2+/y49P3Q//fdp8gJP0kuSTXim8n1dgE8bp/CQ5+HKVS44GQ4b
 YkjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Px9Cef7axZAZx5zE08VlZral6zTy15bazpojZ7PToOY=;
 b=0DvWtQNPzoBjnfUPXCe1TBA7FjxW/VLQ4Tq0PSW9KBGek9xxe5nARbZaLo7jdXGwXb
 pXiS6PKyZs1/vNBIrNt3fqz/sFQrAU0KYYYZLv9RX41pb7YOoC9LCKnb4S0d4E/u9VKa
 V/kiUvIPsGImGvxyr/cbFzC2MJiEjaJuBSdHJC4pZZf10XqGdSXIR44wtuqzhN6Ti4j4
 Hd6g1yMWVjApK83F15iJYUmxcBXS7EYXXnnnBG0VotjUurqvInJWOAcwPzuNP01xjkWJ
 9MSLJp0HbZ99Pu/PMgh/CIQ38qE8jOfDrzVCNmqR6M7vNHTWh9jwsvw/60eEHFQ89N9k
 tEow==
X-Gm-Message-State: AJIora/xpd39ByhS1QaZzP2Xwhwln7bu/omehdZe6jH8x0r/50nFbvP4
 svusyJTCVFtYkkl4RcvM1dIRiIIdnqbvC+AgPsHXbQ==
X-Google-Smtp-Source: AGRyM1uhg6Cruo/Jqp7igjiistXTC7uTVnM1qmvQcH1vszSfFslKYNMF5QQeTUJbfw9HYtJzmYonHkrL2Ty91DTrKfA=
X-Received: by 2002:a0d:e610:0:b0:317:78a1:2159 with SMTP id
 p16-20020a0de610000000b0031778a12159mr386186ywe.268.1655379487653; Thu, 16
 Jun 2022 04:38:07 -0700 (PDT)
MIME-Version: 1.0
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <CAO-hwJJmW_STS=nT22n4pcaZf9gz953K4o2vhgmq-ig4OzxOLg@mail.gmail.com>
 <nycvar.YFH.7.76.2206160959080.14340@cbobk.fhfr.pm>
In-Reply-To: <nycvar.YFH.7.76.2206160959080.14340@cbobk.fhfr.pm>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Jun 2022 13:37:56 +0200
Message-ID: <CACRpkdY24aHp+iJschxZzTC4wyX51qH028YY++LZOMu94COeZQ@mail.gmail.com>
To: Jiri Kosina <jikos@kernel.org>
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

On Thu, Jun 16, 2022 at 10:02 AM Jiri Kosina <jikos@kernel.org> wrote:
> On Wed, 15 Jun 2022, Benjamin Tissoires wrote:
>
> > One point that was also raised in the various HID-BPF patch series is
> > that for "hardware enablement" like support, the eBPF programs would be
> > in-tree, and automatically loaded by the kernel itself.
> >
> > Alexei has some ideas on how to implement that, I had others, but the
> > hallway track discussions showed that everybody has a different idea on
> > the automatic mechanism, but it is a requirement and worth discussing :)
> >
> > Which means that in that case, eBPF would be a more convenient way for
> > users to fix their device, without having to rely on a full or partial
> > kernel recompilation.

Convenient for some definition of convenient. I might be biased in asking
how much harder it is to set up a kernel compile, rebuild a module
and run a few insmod/rmmod to find a quirk compared to setting up
the eBPF compiler and figure out how to compile and push in such
programs.

I guess I could be convinced.

> That definitely does solve one of the issues. It's basically following the
> model of perf, where the ABI must not be kept intact, because the user(s)
> of it are in-tree and released in lockstep with the ABI changes.

I agree, I would actually go so far as to taint the kernel if programs that are
not in-tree are used. That is fine for the goal here: users can create new
eBPF snippets and debug them, but they can't ship them because then
the kernel gets tainted, so they MUST be submitted upstream.

Do you think we could do this? Pushing taint in the face of people who
don't follow our established contribution process is essentially the big
hammer we have to stop fragmentation.

Yours,
Linus Walleij
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
