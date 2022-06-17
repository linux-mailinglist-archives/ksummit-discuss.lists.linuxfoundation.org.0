Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A14C554F75B
	for <lists@lfdr.de>; Fri, 17 Jun 2022 14:17:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D28DC84594;
	Fri, 17 Jun 2022 12:17:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D28DC84594
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=google header.b=es/UU6yj
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DJr8wjRbVlX7; Fri, 17 Jun 2022 12:17:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 120DA84596;
	Fri, 17 Jun 2022 12:17:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 120DA84596
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9BF9BC002D;
	Fri, 17 Jun 2022 12:17:15 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7D623C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 12:17:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57EDA612DB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 12:17:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57EDA612DB
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=google
 header.b=es/UU6yj
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z7ZlXGAnJNqj
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 12:17:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECC31612DC
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ECC31612DC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 12:17:10 +0000 (UTC)
Received: by mail-qv1-xf2c.google.com with SMTP id p31so6127066qvp.5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 05:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yLPYXQbIRe3LY42mgSUMbzHoVUjsqWa2szq78o/Q/aQ=;
 b=es/UU6yj2G87MjyOvadfsyA70/tAdnps9B2aUnzetkwfPz97KJa4SIqKpQWefJPDDl
 Vfq4PRDRpHTj75PC2rMXql7PF/90EpUQ4twuLnjUlsBS0q3EDPGvsPBmVPBY6rUuXcvZ
 yw9YnpUY1V/D1SxL7T/XIfQLgN7SNs05nEyKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yLPYXQbIRe3LY42mgSUMbzHoVUjsqWa2szq78o/Q/aQ=;
 b=8Is/ncn74thHnUwPMQAt8/iwdJ/Jvul0w3JmlB6wHOpKkkQw3BahvSatkRpr/OTBnQ
 B8j5qH/n8N7WuLTx0Y2hDVpA4yQGZlY/aEMVgijgL3n/DXwcVRQ0xxMFUbwUqtLQTNJV
 Mtq+ysjMyLBMNJz33Hx75YtRYyj2Q5MkuN5oyyYcUhmZgC+X5IxywR2E2zCUHPADKwg+
 YjIvSMp6WoUacmpnRc5+AmgrXAHGzx+1IhqURhLzTwMv+B59hHEkbHshE+UudhRRnhou
 XK+ilH1ilhiay3gC5/w2KPnzJTi3Hm7j/xp1BLMAK5Py//AqniVlY26JXWjp56yX2BDu
 7Nkg==
X-Gm-Message-State: AJIora8YgOV4URtPNf4elrbSZ29U9f2bzBHo+n6gQaD1PMT35uT1GmKP
 9uzYuZ2GzKc9SLo+oyS+fwLcvpOacndOTqdK
X-Google-Smtp-Source: AGRyM1tBkSlFdACUeBFm/QORlQWYmcJ2FPP0H0A8ZzXS/lgd86WSberkjXU7nL/pLzklPmTOT7wUFg==
X-Received: by 2002:a05:622a:1817:b0:304:f82d:fabe with SMTP id
 t23-20020a05622a181700b00304f82dfabemr7942012qtc.539.1655468229758; 
 Fri, 17 Jun 2022 05:17:09 -0700 (PDT)
Received: from meerkat.local
 (bras-base-mtrlpq5031w-grc-30-209-226-106-245.dsl.bell.ca. [209.226.106.245])
 by smtp.gmail.com with ESMTPSA id
 l9-20020a37f909000000b006a99088cd99sm4243092qkj.6.2022.06.17.05.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jun 2022 05:17:09 -0700 (PDT)
Date: Fri, 17 Jun 2022 08:17:07 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Rob Herring <robherring2@gmail.com>
Message-ID: <20220617121707.wepd2k5yjdr75pko@meerkat.local>
References: <YqlfHHP8pn5ZAdlO@mit.edu>
 <CAL_JsqLz6b_r_d96C=Q21exqq8TQg1G5GkW6ttiEUTUZ+QYBJA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqLz6b_r_d96C=Q21exqq8TQg1G5GkW6ttiEUTUZ+QYBJA@mail.gmail.com>
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

On Thu, Jun 16, 2022 at 02:54:47PM -0600, Rob Herring wrote:
> > Linus will be generating a core list of people to be invited to the
> > Maintainers Summit.  The top ten people from that list will receive
> > invites, and then program committee will use the rest of Linus's list
> > as a starting point of people to be considered.  People who suggest
> > topics that should be discussed at the Maintainers Summit will also
> > be added to the list for consideration.  To make topic suggestions for
> > the Maintainers Summit, please send e-mail to the
> > ksummit-discuss@lists.linuxfoundation.org list with a subject prefix
> > of [MAINTAINERS SUMMIT].
> 
> Last year we moved to ksummit@lists.linux.dev. Did we move back?
> There's posts to both lists now.

I'm equally confused. I think folks just reused the old instructions that
didn't have the updated list address.

I suggest we pretend this never happened and instruct everyone to move over to
the new list (again). The old list should really be closed with an
auto-responder telling people where they should send things now.

-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
