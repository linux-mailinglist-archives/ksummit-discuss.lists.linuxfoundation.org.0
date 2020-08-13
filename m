Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C4A243B9E
	for <lists@lfdr.de>; Thu, 13 Aug 2020 16:35:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 66FFD885F4;
	Thu, 13 Aug 2020 14:35:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G4cTfHMde8TD; Thu, 13 Aug 2020 14:35:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 029EA885E3;
	Thu, 13 Aug 2020 14:35:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BFDAAC004D;
	Thu, 13 Aug 2020 14:35:45 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EB44CC07FF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 13 Aug 2020 14:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D4CEE885E0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 13 Aug 2020 14:35:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FO1dGVDopK9X
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 13 Aug 2020 14:35:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 15E1F87813
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 13 Aug 2020 14:35:43 +0000 (UTC)
Received: by mail-qt1-f170.google.com with SMTP id o22so4462229qtt.13
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 13 Aug 2020 07:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=lQt/KK7RT37IrSgEa18imoxvr9tlPUAJNuDDhRvQ5SI=;
 b=nl7SX9v7zkGfMpMrUeibIPpRP5LWNEeWEw45GPwxVg4EYOC+JtaVgJH9qDlJpvXu4v
 XfvMt9GKh9fRncAvqDYk1tMUu1eZLB9906lACOb/BUNqsJuezw/tPhkxED004P2P2xQf
 Sh9hK5XTRg82tD689UUn2VlWT0CZ4yR6ePUyA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lQt/KK7RT37IrSgEa18imoxvr9tlPUAJNuDDhRvQ5SI=;
 b=DLBWrTeC3nNBKoKU8cyqUX/0lpdhCSGsirzZbf0LzZ8HhdLcMFWzZLEZvmBQQHjT0J
 wwiEuWcUhMOzlPh3xF7VGo+qKlZNvdd7K5r8X5JEIrkkx1Q73luUIkuxkyG8u6TMfZiZ
 XbsoeQ7OCCEyquu3p5pxsT/JfYEHYORSeu0A4uubPhHTqDBGD8wmj36Inee0aPkaLTkX
 YoGc4VO/YuYD0yTk7ytjoaWI2ftpWto5XQdxnwOGTT4n9mimBmMumL5WvzWVzB5tMHYL
 qBekjZAAMoffDIVrvGtunoacm0N9TNJBgC8sGXWgHQENjUQ+MLZEnauMLFAuQxkFjhM9
 8MmQ==
X-Gm-Message-State: AOAM532OXg/Fis6rvwtG4x6pgDKCmxN1MLSE00Q4nr7zSxprBDJk4In1
 8H/FZYeCULyGlzJuNCYsWdQYyA==
X-Google-Smtp-Source: ABdhPJx3DznpNuE75T0GJs1km/z5AcwrxG7exOyNYbLfmR6GRmxwYYKuHztEOTxB+3tXXUmTf0LfJA==
X-Received: by 2002:aed:3b7a:: with SMTP id q55mr5694906qte.78.1597329342146; 
 Thu, 13 Aug 2020 07:35:42 -0700 (PDT)
Received: from [192.168.1.168] (pool-74-109-246-95.pitbpa.fios.verizon.net.
 [74.109.246.95])
 by smtp.gmail.com with ESMTPSA id p34sm7577331qte.79.2020.08.13.07.35.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Aug 2020 07:35:41 -0700 (PDT)
To: Johannes Berg <johannes@sipsolutions.net>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <ade3420c-89fd-bed0-52e3-a0396eaeda2d@labbott.name>
 <fdee2bf96e207a45d0e88e4a5f05044a112d6ba5.camel@sipsolutions.net>
From: Laura Abbott <laura@labbott.name>
Message-ID: <2ad7e1c5-ed68-a93e-62fe-bf9100557f41@labbott.name>
Date: Thu, 13 Aug 2020 10:35:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <fdee2bf96e207a45d0e88e4a5f05044a112d6ba5.camel@sipsolutions.net>
Content-Language: en-US
Subject: Re: [Ksummit-discuss] Linux Foundation Technical Advisory Board
 Elections -- voting procedures
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On 8/13/20 10:31 AM, Johannes Berg wrote:
> Hi Laura,
> 
> Seeing your reminder reminded me :)
> 
>> We will be using the electronic voting method that we used in 2019. All
>> Linux Plumbers Attendees will automatically receive a ballot. Anyone
>> who is otherwise eligible to vote should e-mail
>> tab-elections@lists.linuxfoundation.org to request a ballot. The deadline
>> for requesting a ballot is August 17, 00:00 UTC (one week before
>> Linux Plumbers)
> 
> Will you be sending out some kind of voting tokens for the ballot? And
> if so, when is that supposed to happen? I (believe I) have requested a
> ballot, but didn't get a response so far.
> 
> Thanks,
> Johannes
> 

The voting itself will be taking place during the week of Linux
Plumbers/Kernel summit, August 24-28. Keep an eye out for the
ballot during that time period. We'll send out another e-mail
when the ballots go out.

Thanks,
Laura
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
