Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F62A39465D
	for <lists@lfdr.de>; Fri, 28 May 2021 19:28:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5EB84400AE;
	Fri, 28 May 2021 17:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xXV8T48rVRLH; Fri, 28 May 2021 17:28:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id BDC514058D;
	Fri, 28 May 2021 17:28:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A03CBC0001;
	Fri, 28 May 2021 17:28:19 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 331B4C0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 17:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14C2084455
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 17:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nFFHU-Xf0hqg
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 17:28:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 32FDD84457
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 17:28:17 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id g17so3210635qtk.9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 10:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=lwlGTvumP5fdlyMIxbR+P6IMsUS6FSMnX8WCkwMBZGw=;
 b=c+lbxkVYiDte5TSukEEtKSfWlvSpUUXICAQI3G+J/VTkLnzpRuEFB328DeEobxfrlY
 Jp22YQdqmKYeCQKPMBVjb65iLEVd+NPwa0RI5j0n9Ks1F1k/fSEyxDmplE87vPYaX17a
 mPACCBYWbKo0KQdbaDaWAIwXh3pYgfZJ1pD6k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lwlGTvumP5fdlyMIxbR+P6IMsUS6FSMnX8WCkwMBZGw=;
 b=WJ2kluEuZpddJpzIdD3/QZqo+BbJIJqJUDFRSt0Gwhi/7yxMU7JmONPsZeQh+ixWIx
 6g5Eq0uiA49tQB5mAVzhXEU5HXrcoF7vTixGeSrAidTeFEY6b+KQP6moYtJCkpV7q0We
 v4WRiM5yewQxi92MDYYumJxgT0Oa2/G9HWVKQjldo6XGuJB+A96W3oDQHtayzPdEdxjd
 1a8+ilC14m4pg9VIdq78E7bE5m9OHlX06SuaZ/yM+Nv32m2D/lnSr2ofd6Bp98LJHdMq
 08bfkLLAGQqW5AxVXaXn1WPmOcf7sbcjLKN3TIFr5CozND5K5N63o3i9HHdAxhFl1fmE
 +kFw==
X-Gm-Message-State: AOAM531azwgPTOBpeJEBBTICxMwMdvWiMsXo83nqXXxjUYYtyPdVGD2t
 tye9SWDye/N6QJpBFA+RCA/7CX3vftkeya/xyR65xg==
X-Google-Smtp-Source: ABdhPJz0tQfyDjzEfWm1AYbPWnvE9bJD89f4lBbSx6Q4e1Qai8zG4f9t7L9Qmgwi8lQGK+y4eCNzmA==
X-Received: by 2002:ac8:5a4c:: with SMTP id o12mr4421799qta.121.1622222895824; 
 Fri, 28 May 2021 10:28:15 -0700 (PDT)
Received: from nitro.local ([89.36.78.230])
 by smtp.gmail.com with ESMTPSA id w7sm3616697qtn.91.2021.05.28.10.28.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 May 2021 10:28:15 -0700 (PDT)
Date: Fri, 28 May 2021 13:28:14 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20210528172814.45rx47azfm6ygkcn@nitro.local>
References: <20190910144717.GA20115@pure.paranoia.local>
 <CAMuHMdU7JvXDCMSA-oYZ+fOJ+bUnc=nDtYhPCg_jusUHALtOgQ@mail.gmail.com>
 <87fsy6esd7.fsf@meer.lwn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87fsy6esd7.fsf@meer.lwn.net>
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

On Fri, May 28, 2021 at 10:27:16AM -0600, Jonathan Corbet wrote:
> > Unfortunately the archive doesn't seem to have anything more recent
> > than from March 2021?
> > Same for https://lists.linuxfoundation.org/pipermail/ksummit-discuss/
> 
> The LWN archive has it:
> 
>   http://archive.lwn.net:8080/ksummit-discuss/
> 
> Konstantin, feel free to pull from there if you want to repopulate
> lore's archive.

Hmm.. I think there's confusion. The ksummit-discuss@lists.linuxfoundation.org
list is defunct. It's still there and receives mail, but the new canonical
address is ksummit@lists.linux.dev.

Perhaps I'll set up the ksummit-discuss list as hidden and put it on emergency
moderation with autoreply.

-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
