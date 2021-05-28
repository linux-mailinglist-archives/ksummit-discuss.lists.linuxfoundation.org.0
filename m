Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8883945D2
	for <lists@lfdr.de>; Fri, 28 May 2021 18:25:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78E2A40585;
	Fri, 28 May 2021 16:25:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xiZPg8bDhYrA; Fri, 28 May 2021 16:25:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD3364057F;
	Fri, 28 May 2021 16:25:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 962C5C0001;
	Fri, 28 May 2021 16:25:29 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 85B93C0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 16:25:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 674D084452
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 16:25:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eQpXI7FxzIBq
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 16:25:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 94FA484453
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 16:25:26 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id j189so4647848qkf.2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 28 May 2021 09:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=lmk2X2QygjDVLsh5Ev1f7xJVtpKVcQHY1j03FEu1kSU=;
 b=fqeRpBoJ+Xf7NTIqIEg2k89SvPu54VlsGzJzUd2uGUbBJIw7lV16tKiYNoAyJ3Dz57
 3aQM9fzVk5r3+laVPE7IQlxA08497E/QlTPS/vvReVGIN2x+wrVyxIqvDVi96QKM4+Ej
 HocPVTcph9nVjlVDAI6Qfsd/cj+7zVfg/6Aiw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lmk2X2QygjDVLsh5Ev1f7xJVtpKVcQHY1j03FEu1kSU=;
 b=qOHFxDLDAygSWfFCt0JbZXaiJdCu6xaGDAShWu5K0lKnbM0UkuQ+ONAiCNXka8kMvo
 AUxQMjByqeOQFfAZpZEMgo9eXEmJPG6sNgXQOFT16fp7udlo3A1gj3VlgO2tX3XnbWN9
 1Rq6a+lYYsAwX7ubI94u03vaTnh3gmL+s13ljD7F4lUoauQP7ji8G/rh0/vJQjlxQh/2
 lIRFVnTYWc/TL8kJPDkVxBMs2JtB75bg83T3JHvOpAwVO0etEMttT2kEMiU8YtIa2J+g
 o3saLGr1OV2TNEOEkFc3lQrTP1DOF9vQBNXeHAUVp9pwA/iF1VOtNiqVZ4B/nDAbj6VU
 eIqA==
X-Gm-Message-State: AOAM5331fB8e/1Mj2r8zs5IFhERcbMWGB+yY6RPine9G8MBnVAv0Efca
 hW3YHh66FB9PuWnN3+GpCepm5itjMSgW6LmvQnQhzQ==
X-Google-Smtp-Source: ABdhPJwhn6m5GOX0KIZ6vldTcYEHagOzKVPtUhSBMmhQHCd4l3dD8Z6Ll5AY1gEv+mrGXiP3tbvkIA==
X-Received: by 2002:a37:8001:: with SMTP id b1mr4591454qkd.437.1622219125217; 
 Fri, 28 May 2021 09:25:25 -0700 (PDT)
Received: from nitro.local ([89.36.78.230])
 by smtp.gmail.com with ESMTPSA id 68sm3764953qke.91.2021.05.28.09.25.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 May 2021 09:25:24 -0700 (PDT)
Date: Fri, 28 May 2021 12:25:23 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20210528162523.lyzme72h6zgd2qvf@nitro.local>
References: <20190910144717.GA20115@pure.paranoia.local>
 <CAMuHMdU7JvXDCMSA-oYZ+fOJ+bUnc=nDtYhPCg_jusUHALtOgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdU7JvXDCMSA-oYZ+fOJ+bUnc=nDtYhPCg_jusUHALtOgQ@mail.gmail.com>
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

On Fri, May 28, 2021 at 06:19:15PM +0200, Geert Uytterhoeven wrote:
> Hi Konstantin,
> 
> On Tue, Sep 10, 2019 at 4:47 PM Konstantin Ryabitsev
> <konstantin@linuxfoundation.org> wrote:
> > By (very) popular demand, ksummit-discuss archives can now be accessed
> > via https://lore.kernel.org/ksummit-discuss/.
> 
> Thanks!
> 
> Unfortunately the archive doesn't seem to have anything more recent
> than from March 2021?
> Same for https://lists.linuxfoundation.org/pipermail/ksummit-discuss/

You're looking at the old list archive. Since the new name lost -discuss, the
new location is here: https://lore.kernel.org/ksummit/

-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
