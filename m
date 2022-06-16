Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEA854EBA5
	for <lists@lfdr.de>; Thu, 16 Jun 2022 22:55:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2578560EF9;
	Thu, 16 Jun 2022 20:55:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SVbOyypwTVQn; Thu, 16 Jun 2022 20:55:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6C62860F48;
	Thu, 16 Jun 2022 20:55:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0D742C002D;
	Thu, 16 Jun 2022 20:55:03 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5476FC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 20:55:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FBF260E8C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 20:55:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0X0zs3_Vv3uc
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 20:55:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com
 [IPv6:2607:f8b0:4864:20::e2c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6EB4160E74
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 20:55:00 +0000 (UTC)
Received: by mail-vs1-xe2c.google.com with SMTP id q14so2304628vsr.12
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 13:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U7ayXcdPCAmswEedGc1dzzsK+6LHG6+TqtSGkrLyV7A=;
 b=iT0ClR64Ho67jnTd8UVBKxb5UK+8sNAyCa9ff0Kuz5vFeoCfiZVmFOZ18OSOHw0yND
 xKfqSImvIIdcUNnKTn396UL1e6ftq4NpoSv21h2qiMTIjjDpQrDqlLQffT7Khj6A2vnQ
 g64uXoUGn82gtrReZFCbn0XL+1fg915wYjaSiYDjYTpRG2GXaunZbkabEPfmLyatenX0
 sFkohhoYbQGD49XUqW2ZzxIkwxvVTx1m3Ix+v0GFP1WKF0feHws07myupPdEjCOQqyUK
 e0Pf3fWlRe/7YpNMF4GMBTDyt6bKGCoRM0k3laww/OQBexF08vsJ99AIsMo0ZWrrvBRA
 +ikA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U7ayXcdPCAmswEedGc1dzzsK+6LHG6+TqtSGkrLyV7A=;
 b=N+UjXE+wOtdBELjXVV7z37v3rWYaQNpD3QzNMJi/fYo5w8g8K4CqAZcXNWWHyZNCSh
 p3/x/h8V44ig4yvXTZmfV55Qm43LIL08hq9sOxQrMQFedrXEaqJwTY0FVgaJ5dqziBvS
 /8SsJBCghNokHGufgMFaYBoTCuGYIkm97HmeK/t+3UdmKJgWDmecoK4VNFbkEJbtbCER
 tpMT5L36F/l3IBRlXGrwgm77QaO3dgm4KRbREV+z0h/bBJIwQZWRGnlqxboQG2Lrby4Y
 j6oaUJCgrdUD65X1S7rK7r1WHm4TzLidTw+Q7vEUegaGM9irKExCBDswkTZzU+4cN0bY
 hLIA==
X-Gm-Message-State: AJIora+5WwqyoZRTjzjKXJG/2nCPq6TxUuWFwXNne5+vbRwYgM4Y/DBZ
 w35ax0+wzjMuo0T+RkVLK8Y9GyPvKWrdtLVh5g==
X-Google-Smtp-Source: AGRyM1s1N3pDJ2ujHiQ9nkHS2W/oIk9weNwa8+doiiN04EML6SG8yY+l2+D4jfZD2MmI4OMxZ78+0bdpL1KtuvXODvc=
X-Received: by 2002:a67:d38c:0:b0:349:d028:c8ea with SMTP id
 b12-20020a67d38c000000b00349d028c8eamr3329236vsj.6.1655412899166; Thu, 16 Jun
 2022 13:54:59 -0700 (PDT)
MIME-Version: 1.0
References: <YqlfHHP8pn5ZAdlO@mit.edu>
In-Reply-To: <YqlfHHP8pn5ZAdlO@mit.edu>
From: Rob Herring <robherring2@gmail.com>
Date: Thu, 16 Jun 2022 14:54:47 -0600
Message-ID: <CAL_JsqLz6b_r_d96C=Q21exqq8TQg1G5GkW6ttiEUTUZ+QYBJA@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Maintainer's / Kernel Summit 2022 CFP
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

On Tue, Jun 14, 2022 at 10:25 PM Theodore Ts'o <tytso@mit.edu> wrote:
>
> This year, the Maintainer's Summit will be held in Dublin on September
> 15th, 2022, just after the Linux Plumber's Conference (September
> 12-14).
>
> As in previous years, the Maintainers Summit is invite-only, where the
> primary focus will be process issues around Linux Kernel Development.
> It will be limited to 30 invitees and a handful of sponsored
> attendees.
>
> Linus will be generating a core list of people to be invited to the
> Maintainers Summit.  The top ten people from that list will receive
> invites, and then program committee will use the rest of Linus's list
> as a starting point of people to be considered.  People who suggest
> topics that should be discussed at the Maintainers Summit will also
> be added to the list for consideration.  To make topic suggestions for
> the Maintainers Summit, please send e-mail to the
> ksummit-discuss@lists.linuxfoundation.org list with a subject prefix
> of [MAINTAINERS SUMMIT].

Last year we moved to ksummit@lists.linux.dev. Did we move back?
There's posts to both lists now.



Rob
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
