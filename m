Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1124021BF64
	for <lists@lfdr.de>; Fri, 10 Jul 2020 23:48:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 897B420455;
	Fri, 10 Jul 2020 21:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0l0PNzWjYnft; Fri, 10 Jul 2020 21:48:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 13A15221C6;
	Fri, 10 Jul 2020 21:48:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DA8E7C016F;
	Fri, 10 Jul 2020 21:48:34 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 58AF6C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:48:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4730289C89
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:48:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FBh+ikbYaEJd
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:48:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 714B689C4E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:48:31 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id z17so5722649edr.9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 14:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lUIt310w+rKIAAlks2WRt+7uT8NARjs7Y0eCqqZJf2U=;
 b=BHwRYb78vowORyVP/n4chHoNe7CPo7i/RG9zILzfXiNvGgfgK88kGYQrCbjF+qN7ms
 PU8cAeDYvJPQ3NOIOsR7F50xSpNDF/kQU8KKfd6cCzdNw9Ynsnf8ViAiO9poo9le0mpI
 C21BfAQRvQsFhOW8j/uqlBDuqO1mRKsJe1NiN17k0rIjOgUCof1w1QPQH1pbkaiMCWHt
 GV4z0E0gG9uV37pmtqshOduDAnwA06bU2RI2/wT3grOfZ6h9YYtTisHqCDfnJSRApb73
 CZFYi2bmMOn3dj5jr0hjO8hLk8Ff56tR0Bf38ksycHvQgFHvghRnTETBTSPLLImHcWVN
 cZag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lUIt310w+rKIAAlks2WRt+7uT8NARjs7Y0eCqqZJf2U=;
 b=rJcOxzmSCe+KUuAG1CiHy2VHsiKPhAk4r3Zf8sG7yBPtswa/D8u/z7bvlCf+60J8Tb
 WqCVIY0jSYRPev8//Y1WfHWATDp5erL0a67HzVd7zbOKLIRMNe+s+MhEc7Sej8kgQwUh
 QXtQgmNJoFzDO3NEZWSfIKCZYhaGriwl8rGU39Pxs2zzlPRQrSTAHV5cfm3RbK/6j0T9
 8bwmEQr5ciqa6ePqv9bcjd7qKDupPseg6gaB3DDwaNcPFecd7g4yTDm2lTgGZehPNtRa
 QG37z1xrsg1e0TuklG4luFuBUQMn/UEMy/PzzdFDjUBiqKjS0ExDNVmmrrqRStUdMcUj
 s4vw==
X-Gm-Message-State: AOAM532usDfe/qviCsrAvdkMLas7wFBZ18t31vPH46D4k86BBWd3ZEsQ
 vYvsz5NAb+hdEL034k2rB8tNppz59SpbSALjzWA9Lw==
X-Google-Smtp-Source: ABdhPJwWWnbhpZs3ka1RooYvoRDcsQuQWgeCkvZ6c9xxca909Gu1Z/nB6d4LnB2raQ02AMoXB9+2GYTltV6dLu2ajQU=
X-Received: by 2002:a50:d9cb:: with SMTP id x11mr76240842edj.93.1594417709895; 
 Fri, 10 Jul 2020 14:48:29 -0700 (PDT)
MIME-Version: 1.0
References: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
 <97c24e99-9f49-f094-acfb-705c2da12a76@labbott.name>
In-Reply-To: <97c24e99-9f49-f094-acfb-705c2da12a76@labbott.name>
From: Dan Williams <dan.j.williams@intel.com>
Date: Fri, 10 Jul 2020 14:48:18 -0700
Message-ID: <CAPcyv4hpBN=KA54YY96MG2tuKKH7=hyX+rA1t3CUFLL76aNTtg@mail.gmail.com>
To: Laura Abbott <laura@labbott.name>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Dave Airlie <airlied@redhat.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [PATCH v3] CodingStyle: Inclusive Terminology
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

On Fri, Jul 10, 2020 at 2:13 PM Laura Abbott <laura@labbott.name> wrote:
>
> On 7/8/20 2:14 PM, Dan Williams wrote:
> > Linux maintains a coding-style and its own idiomatic set of terminology.
> > Update the style guidelines to recommend replacements for the terms
> > master/slave and blacklist/whitelist.
> >
[..]
> Acked-by: Laura Abbott <laura@labbott.name>

Thanks, Laura.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
