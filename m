Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EA3394692
	for <lists@lfdr.de>; Fri, 28 May 2021 19:38:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50BE5402C0;
	Fri, 28 May 2021 17:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Wc7h0Bvi8JO; Fri, 28 May 2021 17:38:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2B3D4058A;
	Fri, 28 May 2021 17:38:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 981B4C0001;
	Fri, 28 May 2021 17:38:43 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3D741C0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 17:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 176E68446B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 17:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UP09RTg6DVX8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 17:38:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C9408446A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 17:38:41 +0000 (UTC)
Received: by mail-ua1-f46.google.com with SMTP id w5so2556936uaq.9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 10:38:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+R0SCm6ik9ZR8zAjdFCNqXN5+kWmWnf2bfUnptve9uM=;
 b=JDQedCCITiCUVj0gEuEf28FJGz4xL7W4vlYOHllpW6/BeMI0K7Gbqn/jrCweNFlC0e
 E5WwCsmfPJtd/PZrbFTIjpp85RANf8kxmhAF+55Ttnvg0TeUUfIkS3qmtQmN1fSr9nF4
 zxT9f5vKnaOBAj8GDDp/knEFUwI4ksLaZZV1i6VDnT49wIPpwndxL6+l5iUjLBPlcV/V
 YiwYwvkbm7ZDinlGoX3qTdq37aHU/I+ytPSjqy1bO/DbMc0zwEHBpEgej7GcEuWS36zD
 ndS4w3ar1umBL7kdLL7It40TLT0L8DUnO6xmD53aBWp4akpCRuThpuecUisN1mQGadif
 FARw==
X-Gm-Message-State: AOAM532ICONV7PKaTQ0thLE60Fn8ssXQmZGHDWz0fyNmiyGBSO1EXnRT
 X9pWpPemjx+rgQSVkmuez6ERonDdZSUVtJgo3d4=
X-Google-Smtp-Source: ABdhPJwVYGG5PapRaJnKu05oVmgQ1eNG6f3QyESjc8mf/kvCMK+qIoFc+jmG7v1OGNa78juglTZGTiykncGTbOPOT6o=
X-Received: by 2002:ab0:7705:: with SMTP id z5mr4518168uaq.2.1622223520146;
 Fri, 28 May 2021 10:38:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190910144717.GA20115@pure.paranoia.local>
 <CAMuHMdU7JvXDCMSA-oYZ+fOJ+bUnc=nDtYhPCg_jusUHALtOgQ@mail.gmail.com>
 <20210528162523.lyzme72h6zgd2qvf@nitro.local>
In-Reply-To: <20210528162523.lyzme72h6zgd2qvf@nitro.local>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 28 May 2021 19:38:28 +0200
Message-ID: <CAMuHMdUFvEgFDTX4wzM78rttzkeagPkLgQCiA1DwZ7WpPFvQgA@mail.gmail.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] ksummit-discuss is now on lore.kernel.org
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

Hi Konstantin,

On Fri, May 28, 2021 at 6:25 PM Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
> On Fri, May 28, 2021 at 06:19:15PM +0200, Geert Uytterhoeven wrote:
> > On Tue, Sep 10, 2019 at 4:47 PM Konstantin Ryabitsev
> > <konstantin@linuxfoundation.org> wrote:
> > > By (very) popular demand, ksummit-discuss archives can now be accessed
> > > via https://lore.kernel.org/ksummit-discuss/.
> >
> > Thanks!
> >
> > Unfortunately the archive doesn't seem to have anything more recent
> > than from March 2021?
> > Same for https://lists.linuxfoundation.org/pipermail/ksummit-discuss/
>
> You're looking at the old list archive. Since the new name lost -discuss, the
> new location is here: https://lore.kernel.org/ksummit/

Thanks, that does have what I was looking for!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
