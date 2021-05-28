Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 528183945DC
	for <lists@lfdr.de>; Fri, 28 May 2021 18:27:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 909DB40589;
	Fri, 28 May 2021 16:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v1p5IkD3ggfc; Fri, 28 May 2021 16:27:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD87240584;
	Fri, 28 May 2021 16:27:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 966ADC0001;
	Fri, 28 May 2021 16:27:20 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CB89DC0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 16:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA97C84455
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 16:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=lwn.net
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bSIHn0aZS3yA
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 16:27:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 09BB684452
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 16:27:17 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:281:8300:104d::5f6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 137F92C1;
 Fri, 28 May 2021 16:27:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 137F92C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
 t=1622219237; bh=bfARi1Te4LRLNDtgIMCEy5tA+V+QHFOUUlMyFgpnmsQ=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=dtOeVN3zrRU4wdZU3gaW0vap/fuEGnpIIbBWshl7G2od401HTfxZLUogG5Sxnhogz
 UAk7sR6d3pOJn1+kIKxjsdWEMAbql5+dkvTyMZPwffD4jr3IO6I+hT32bVPVtkoLxx
 Ca0ttpVqIn/sLeA+5R4gPL1lSutfQDmnS5axBHWtU7if+NIfJGDFE1hTs9lPBArNlk
 1FKoQ/VHKYg1fn8iZECHxQzJvtAhx+BUBpZsu3n57RU4ACYkFWWO6v71rMwVdveM+T
 VsmSxwSazxQhzsGT3tLoQ+cddy/XiaoiusQgJX2+Rrv4aMkvD32kCzRUHa+S8NEwsc
 17CsZX/uBCnEw==
From: Jonathan Corbet <corbet@lwn.net>
To: Geert Uytterhoeven <geert@linux-m68k.org>, Konstantin Ryabitsev
 <konstantin@linuxfoundation.org>
In-Reply-To: <CAMuHMdU7JvXDCMSA-oYZ+fOJ+bUnc=nDtYhPCg_jusUHALtOgQ@mail.gmail.com>
References: <20190910144717.GA20115@pure.paranoia.local>
 <CAMuHMdU7JvXDCMSA-oYZ+fOJ+bUnc=nDtYhPCg_jusUHALtOgQ@mail.gmail.com>
Date: Fri, 28 May 2021 10:27:16 -0600
Message-ID: <87fsy6esd7.fsf@meer.lwn.net>
MIME-Version: 1.0
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

Geert Uytterhoeven <geert@linux-m68k.org> writes:

> Hi Konstantin,
>
> On Tue, Sep 10, 2019 at 4:47 PM Konstantin Ryabitsev
> <konstantin@linuxfoundation.org> wrote:
>> By (very) popular demand, ksummit-discuss archives can now be accessed
>> via https://lore.kernel.org/ksummit-discuss/.
>
> Thanks!
>
> Unfortunately the archive doesn't seem to have anything more recent
> than from March 2021?
> Same for https://lists.linuxfoundation.org/pipermail/ksummit-discuss/

The LWN archive has it:

  http://archive.lwn.net:8080/ksummit-discuss/

Konstantin, feel free to pull from there if you want to repopulate
lore's archive.

jon
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
