Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0C954D374
	for <lists@lfdr.de>; Wed, 15 Jun 2022 23:16:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A11440BDE;
	Wed, 15 Jun 2022 21:16:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9LhNJYDO6tdz; Wed, 15 Jun 2022 21:16:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id ACAD540A96;
	Wed, 15 Jun 2022 21:16:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 48D82C002D;
	Wed, 15 Jun 2022 21:16:11 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E8EC9C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 21:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D08B8404B2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 21:16:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 30TXkWY32JSC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 21:16:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com
 [IPv6:2607:f8b0:4864:20::729])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CEF664010C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 21:16:08 +0000 (UTC)
Received: by mail-qk1-x729.google.com with SMTP id 15so9704667qki.6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 14:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=toxicpanda-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=pp31Bh8X9186h3K1JReHD+SIwP9/8sT0sL348ehhZVE=;
 b=1D8M9p+Dsk5CFvieeERm1erUcq+TXMhgtZ52uoBx5rM5dChALXSbf290kvTcm48519
 9qq4jclmh+AqdYolg9NFGGkh3/GgJU6kLxfrl11uFVOCK3QUifajfWnf8eHZxdFiEMrR
 83sqbHibzUoH6VEz3xOT3uWhE/ej5jjHGT7e6uV72ZdMDYJ6isOF2Cvcc6etkMgHmjYi
 plU5SQUe8rKOVkh+2kH5PRzzu0wOfl+jI37B6/Wko+/9IQxp9r4bJkG4WQyl0bxrmcfQ
 nkDnVb0VuF4Fb7AZJ+P8+pSV2Ub5KlMvRJVFBFIxAPQiXr/l/jKmb6D6fI/mQHe9LNY6
 nmyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=pp31Bh8X9186h3K1JReHD+SIwP9/8sT0sL348ehhZVE=;
 b=M9uIYsenRZe8EsYWbykKFtGbZqYnmPPncNjdGb/Lkgw94iP+FK7KVfCyky8VwQRKil
 6XaB4uU0XGhWYGgkhF9xO6hvGxC7XuS6VaOQX/TdeC163MxqsPoFonnfMJkXNHebrvOd
 Sr7ReQ9xs65NHq3SBwCrfK6kUd0DSRaslRjsX8Kx3LJivee1+oFfjEXVXClsZYPdLHqG
 vY1iPEA8AFN8j4FUeGKzF7u7Tqec1KkBqrJ0vGMGoYCBZM7dE01wnqzGMYGlAex6HsE6
 16PDOZl3k9R6safM0V8Dh2//CWJmZsjoCKgYDQ9CMPaYrDdqkfBa8e66GKjHMGsqUido
 WQbQ==
X-Gm-Message-State: AJIora9y4T9vxERsf3Pc3KM1XAYpA11nxNK1M3uZulOnGAY8sX4BW17y
 JMgI1OxwaUenProk725TsV0XzNpeyoFHXw==
X-Google-Smtp-Source: AGRyM1syUrkKFdtlyXN8ezG7FBI89BtEanjTMjm+OFuOjjfvJIMDfutdxRUUlx6l13VW96xCBG0wBw==
X-Received: by 2002:a37:5cb:0:b0:6a6:ae4a:2fa5 with SMTP id
 194-20020a3705cb000000b006a6ae4a2fa5mr1280396qkf.753.1655327767285; 
 Wed, 15 Jun 2022 14:16:07 -0700 (PDT)
Received: from localhost (cpe-174-109-172-136.nc.res.rr.com. [174.109.172.136])
 by smtp.gmail.com with ESMTPSA id
 u16-20020a05620a0c5000b006a785ba0c25sm10450027qki.77.2022.06.15.14.16.06
 for <ksummit-discuss@lists.linuxfoundation.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jun 2022 14:16:06 -0700 (PDT)
Date: Wed, 15 Jun 2022 17:16:06 -0400
From: Josef Bacik <josef@toxicpanda.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <YqpMFk94RtPmbGxm@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] The role of maintainers wrt
 technical and personal disagreements
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

Hello,

A topic we talked about a fair bit during LSFMM both in sessions and in the
hallway was what we expect from our maintainers.  Historically this has been a
lot of things, merge, review, and test patches.  Send patches to Linus, get
yelled at when the testing was insufficient.  Attempt to wrangle the children
playing in your sandbox.  Maintainer is the catch all developer for subsystems,
and this leads to a variety of problems, like burnout or simply inactive
maintainers.

Additionally there's a common attitude of letting developers fight it out to
figure out the best way forward on a contentious topic.  I can think of a few
major reworks or features in the last few years where things got pretty heated
between a few developers.  And not new developers either, these are well
experienced community members.  I understand the argument that we want to let
developers figure out the best way forward amongst themselves, however it
doesn't help if relationships are destroyed to the point that people can't be in
the same room with each other.  I would like to see us move more towards
maintainers, or even just technical leaders in the area, stepping in and setting
the direction when there is conflict.  Oftentimes a third party can find a good
compromise and a path forward that keeps everybody from killing each other, and
keeps progress moving.

There's a lot of automation that we could build around the mechanical things
that maintainers do to offload them and give them more time to devote to the
soft skills of maintaining a subsystem.  Thanks,

Josef
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
