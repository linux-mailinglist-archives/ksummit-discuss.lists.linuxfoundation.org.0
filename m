Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B4F21BF15
	for <lists@lfdr.de>; Fri, 10 Jul 2020 23:13:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FEF886193;
	Fri, 10 Jul 2020 21:12:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IRqabE_qTl1Q; Fri, 10 Jul 2020 21:12:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D29198610E;
	Fri, 10 Jul 2020 21:12:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8765AC016F;
	Fri, 10 Jul 2020 21:12:28 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 72FE0C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6190689CC1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dIa-D81ugFh4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:12:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CCB4C89CAE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:12:24 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id f139so7196432wmf.5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 14:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amacapital-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iDU8fng2u/ptUYYN0OIalaQDIlRQ0CTBvjvqWdkkHMk=;
 b=IhVmn6R4tsUfkKh5I/ciZ/rBQ8BsnoOVHYitAACUrBI96Gx5knzzbDJxd1g8amSNc1
 h9NfSTz9p4iFMllLRKvvgIBucijejW6s+LUcmt7ZbsHKNINLfAQhhmh1f80wtJ/31ZIL
 OBaw7HIjiBAK+SqgzXOECZj7SIbMC7eTvAcZx3O/DF3HMPS2sIPK+FXnGBYt+JQeMiuz
 tacnne67e4StiLJQ0nh2JzxX3hC9xEIdAe+U4gnmooNA21ND0tIeBNFaercXcxxrbJ49
 ByG6nTNPDRsZtM57GJLwiezngo4vT+tdYc5SATOmz5BLMvQiAm2VJwURTN4bRjysI6i9
 5XTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iDU8fng2u/ptUYYN0OIalaQDIlRQ0CTBvjvqWdkkHMk=;
 b=YReIgcZbxHuNZriHJaU/qEy88v/8+zpSoRZzRTgjogzT4b23/7Iu0MFnkeZRHwCkvl
 IUoyl6+dGgl9q37GZmoAh81bzDjqZUJf+WyEkdWUimhQL1K4IHnYpxCqlA1ewUos+KvA
 wr3c1/fZhPTRDvV01dKZNSmCwBCeJMKpIoO2DM3nCTTW2OWWKgec7dpLw8agTQfhJ6Vp
 PJBrDzBqgQH99qCANa8I55DvraPo82gl0WBx6zH+1JJjB9YOF7eTw3fhlAIaHIKpuhY4
 kVArqQnvXjdMnp6VJ40pveBXNgl8Co2vZ4uaLDH9Ng3lud/6kOMkTrErSfdCFecvfgW+
 zurA==
X-Gm-Message-State: AOAM530flDCibCS85jNsZDrcF9oeQepm+onHjx5AiZt9xtu1UOZq6pUM
 caNf0m9/cfQlttpgtSNFQsSAG+h5GoCHkCDIuZdtMg==
X-Google-Smtp-Source: ABdhPJw0YGnnoDBY2TL0MP5/In74DMvl0tW5Rc0TZ5jcVzPWcrZ/lgxBz9FeD1GSxb4qE+8Xci1yeE8ZPWNpKsDhnKc=
X-Received: by 2002:a7b:c92e:: with SMTP id h14mr6698254wml.36.1594415543141; 
 Fri, 10 Jul 2020 14:12:23 -0700 (PDT)
MIME-Version: 1.0
References: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Fri, 10 Jul 2020 14:12:11 -0700
Message-ID: <CALCETrVufhJTh3LweQqqH1OHc2rTsGkMcmTzCq6kKh1ETY0arw@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, LKML <linux-kernel@vger.kernel.org>,
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

On Wed, Jul 8, 2020 at 11:30 AM Dan Williams <dan.j.williams@intel.com> wrote:
>
> Linux maintains a coding-style and its own idiomatic set of terminology.
> Update the style guidelines to recommend replacements for the terms
> master/slave and blacklist/whitelist.

Acked-by: Andy Lutomirski <luto@kernel.org>
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
