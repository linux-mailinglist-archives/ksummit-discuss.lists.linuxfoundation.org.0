Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D49253833
	for <lists@lfdr.de>; Wed, 26 Aug 2020 21:20:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FA6B86B1D;
	Wed, 26 Aug 2020 19:20:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sRschMcLe0G5; Wed, 26 Aug 2020 19:20:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9DA3486B12;
	Wed, 26 Aug 2020 19:20:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 679AFC0051;
	Wed, 26 Aug 2020 19:20:40 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 07198C0051
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 26 Aug 2020 19:20:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CB9BB22865
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 26 Aug 2020 19:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rq1ccFQTLGAA
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 26 Aug 2020 19:20:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by silver.osuosl.org (Postfix) with ESMTPS id EE78F2284F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 26 Aug 2020 19:20:35 +0000 (UTC)
Received: by mail-pf1-f173.google.com with SMTP id y206so1512255pfb.10
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 26 Aug 2020 12:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RLPtO0CSz76QruBrnnPYXxwYsr60gAaI+e/hHuxBy+Q=;
 b=McEs2MryvfzpREDfpEp0b2vogVITKfqJLSVxdMG2oIMuDWfWzSDKH70bY11thb2TFP
 s0LKgGWOPSLwTKZaUz/KJNmSm0Leku299IMvgcVUnXB6f6RkGMluMccABgdYkL3We1LU
 KFPQA6e572t4CrnKAwKKGSUJ+d0ZnW6vio2MM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RLPtO0CSz76QruBrnnPYXxwYsr60gAaI+e/hHuxBy+Q=;
 b=BNQWgS7gDwuQ5KYbvCJmOtSXiOFVJs3o7ZWLwh3iggafTSXz5QQ9YseL1Xkzs7mXqm
 HeMOeOCY8eZQFuxe4WnplxbcFBBBk9IXMDJyieOMjpeZIBXI3pGq33AyAwucT5H/3Cak
 y00rLsyhVlkr8jbfxk0Q71JNEHjm6iiYVeZzMMVB76H3dCmvApkyt+YKGZSnCoE203hd
 0XYRjT6lBWVd3fduAvCMJ6cFAwhQ9PaS7ednx5Lfmwp/64YU26i9S6wB7RjSwKtOJX25
 4QUC9eF+UXONg9KCYDFlZhMp+tt0a80JcJZ1hUC3Ld80Qv1buk3lKijjfXTPAkROAnrh
 lLYg==
X-Gm-Message-State: AOAM532KzHrXTT/3BsRGso55PKNlTD6AgOCbwlM+tctkWGwsM5PsQrs3
 ePeDU/Fz3i3fHC1hUWxucfRdudlVRGiVkA==
X-Google-Smtp-Source: ABdhPJxU0Yk0dBqYldgaVP/NCoXRqUKjwEQeW5pJ7PSWs6vtG5Ek6M43gpXdFMndGVBhjaicBPaSbw==
X-Received: by 2002:a17:902:b402:: with SMTP id
 x2mr12621904plr.97.1598469634823; 
 Wed, 26 Aug 2020 12:20:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id b185sm3728349pfg.71.2020.08.26.12.20.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Aug 2020 12:20:33 -0700 (PDT)
Date: Wed, 26 Aug 2020 12:20:32 -0700
From: Kees Cook <keescook@chromium.org>
To: ksummit-discuss@lists.linuxfoundation.org,
 tech-board-discuss@lists.linuxfoundation.org
Message-ID: <202008261215.D6F3C93B8@keescook>
References: <20200826130904.570c91bb@lwn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200826130904.570c91bb@lwn.net>
Subject: Re: [Ksummit-discuss] Reminder: please vote your TAB election
	ballots
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

On Wed, Aug 26, 2020 at 01:09:04PM -0600, Jonathan Corbet wrote:
> The 2020 Linux Foundation Technical Advisory Board election will be
> closing tomorrow (Thursday) evening, US/Mountain time.  All LPC attendees
> should have gotten a ballot at the address they used to register, as
> should all others who have requested a ballot.  Results will be posted to
> these lists once voting closes; please be sure to get your votes in before
> then.

And for anyone drowning in email, it was sent as:

    From: "Jonathan Corbet (CIVS poll supervisor)" <civs@cs.cornell.edu>
    Subject: Poll: Linux Foundation Technical Advisory Board election


-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
