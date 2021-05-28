Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 540763945BB
	for <lists@lfdr.de>; Fri, 28 May 2021 18:19:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2AB784412;
	Fri, 28 May 2021 16:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yhfFCxulJD43; Fri, 28 May 2021 16:19:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2563B843F1;
	Fri, 28 May 2021 16:19:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E3306C0001;
	Fri, 28 May 2021 16:19:32 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 14025C0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 16:19:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E869A40ED0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 16:19:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8aXBPUEPrEAa
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 16:19:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com
 [209.85.222.48])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AA82A40ECE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 16:19:29 +0000 (UTC)
Received: by mail-ua1-f48.google.com with SMTP id c6so2453963uat.0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 09:19:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PwcTFCF6RbyR1AEcUQpSFz9nKbJRmUmljBXbbvWpwp8=;
 b=UVOh1pykD4dpTR9+lOwc5tTD5FxeutIwbPAIm5RLC3GFt2eU4He+vceusc4mAMwihH
 cmnxOprxbdErSTCjs0/f5VME7DRZwTL3BE9eX2HIudW7TziPDlk/jOM2hrLfzreFUQxO
 ScD81dERk7Hd3Sj3kV80yzwqRiy4ZV+ILTXNvSF2tqwxORL3FX7HDGCa91pZqvFkv3FY
 9gaJFqJNdJi4C3glGVwt0Nt1/uT0R0jfGa55uRN8vk1/v8UUrwmq+BMtUNuaDXZ2+iId
 OuaCilKmYVEOihkE05LgBxJMpSJQsW7I52eOq48oGzt9qD5Fnx503u89perEKGyA9Aq0
 VAgQ==
X-Gm-Message-State: AOAM5334vDW40Rk+zToOMP2O7Z9tB2QJrp+ccrcTnPk5KyXpD/hiLgzF
 BYOkxVDCYDFmUsgj4snNUg2Ww3T8bAwKJtZjvbY=
X-Google-Smtp-Source: ABdhPJxy9ryrXkwrt+j57xwRNnAolsH3fngv0DR+JwxR0LFe9rCufbXGLYZw/VfUYvgVkaMKjEDwzszXwQbwwJlUD0Y=
X-Received: by 2002:ab0:100f:: with SMTP id f15mr4192786uab.100.1622218768490; 
 Fri, 28 May 2021 09:19:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190910144717.GA20115@pure.paranoia.local>
In-Reply-To: <20190910144717.GA20115@pure.paranoia.local>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 28 May 2021 18:19:15 +0200
Message-ID: <CAMuHMdU7JvXDCMSA-oYZ+fOJ+bUnc=nDtYhPCg_jusUHALtOgQ@mail.gmail.com>
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

On Tue, Sep 10, 2019 at 4:47 PM Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
> By (very) popular demand, ksummit-discuss archives can now be accessed
> via https://lore.kernel.org/ksummit-discuss/.

Thanks!

Unfortunately the archive doesn't seem to have anything more recent
than from March 2021?
Same for https://lists.linuxfoundation.org/pipermail/ksummit-discuss/

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
