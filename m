Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6962477F4
	for <lists@lfdr.de>; Mon, 17 Aug 2020 22:11:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A66D387807;
	Mon, 17 Aug 2020 20:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FfdD7oa5Umq5; Mon, 17 Aug 2020 20:11:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 600DB877FF;
	Mon, 17 Aug 2020 20:11:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 15953C07FF;
	Mon, 17 Aug 2020 20:11:12 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BA2BCC07FF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 17 Aug 2020 20:11:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A1D8A854CC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 17 Aug 2020 20:11:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6XM4yJi5KzBW
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 17 Aug 2020 20:11:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CC08F854C9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 17 Aug 2020 20:11:09 +0000 (UTC)
Received: by mail-ed1-f42.google.com with SMTP id m20so13399583eds.2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 17 Aug 2020 13:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=sPKc+6Es/epvp8Trrkwzsqy6x7tXaxd4ShL7VNT8OFM=;
 b=zvC99vrLQEWicOqF5CZFfs2kaD5dBY9DHAa1Ti66SdzUwXYjP+TnXdCfQ4IneEtMPd
 EIHPn7Rk2XJp77qPSyIdmAx5gwi2hNPd+v7k2NEYnW8o0CXHsSE3J7L/DaeA5+0LUhN/
 mynvJAsBlIX8kM6RRSVv74f8LNwbZTXEIHrfYoXkKb6xK2aRkb88/oYlANLlMOy+k1Pm
 RObFHly2jNM0ApEeCJaeU4h4jKX4j+6lakWQjKgdywG6TczJcT93PTl6VHdhBXz7B256
 H/iMsm+n+x4latzZ1h7gfZAPK2qB9JHs5N8peNWlBB5w9hlE6PE88W7Be92GhTjxN/46
 H/Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=sPKc+6Es/epvp8Trrkwzsqy6x7tXaxd4ShL7VNT8OFM=;
 b=sp9/ClZQ7HGm9q1zHGi+jVKUCrI8hAqI5AO54qbO3DRRTiqUGWInWKt6SZr0FyfijA
 YAz6TRt83RXvbNPirjncPs6sbssC4EB9/PXMy7MX5hJPltHxppk2NiYjuiTrYh9p5OON
 GhHYt8OUjWKKH2PyrdswJXHOK4SKiVgu/K9vkCRpf0VmTpmrNVG9BGasqGJfk9hfsBww
 N/HY5wzVlOo3vAjJAUhp0S/Fd4UPkmlnTagx9CZils+xvBGdHWtpsU283oxjfBJlQj08
 kh3HObhwopTxSSJzQ5IX/eKFME/TfRVjTweMxevMCN5eCj6yR94TiyNS/P/Un39pfVjx
 ogkA==
X-Gm-Message-State: AOAM531k9yoZoZVlMK3hUOjTptjtTecbD2v3kF4WNzroXwDo2Br5ltmi
 r8XTBAQ/2csi4iCiKivR+2oT3JeP9U31Y6FsdXKLqaQx36g=
X-Google-Smtp-Source: ABdhPJxijJaPYVvhK8xDblRGDaWWJko40Fn67CRrT+uEOfwMJcwrB8jJc+1leDDFHIoWdnh6YSo1UngwOh/fj8npgi4=
X-Received: by 2002:a05:6402:17a4:: with SMTP id
 j4mr4091135edy.52.1597695068316; 
 Mon, 17 Aug 2020 13:11:08 -0700 (PDT)
MIME-Version: 1.0
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 17 Aug 2020 13:10:56 -0700
Message-ID: <CAPcyv4j5Cpo4F3VLOawK93BwtNXwMCi+4SNZEAQeV93T+BK9Wg@mail.gmail.com>
To: tech-board-discuss@lists.linuxfoundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: [Ksummit-discuss] Self-nomination for 2020 TAB election
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

Please add me to the candidate list for this year's TAB elections.

The Technical Advisory Board pools the experience and influence of a
group of Linux kernel development community members to collaborate and
respond to issues impacting the wider Linux community. I am motivated
to continue in this role, motivated to offer my perspective and effort
to positively impact the health of the community. In particular, I am
interested in the topics of maintainer-contributor relations,
inclusion, and the long term viability of the upstream / GPL Linux
kernel development model.

Since 2005 my kernel development experience has ranged from low-level
Arm / x86 enabling, to storage device-drivers, and most recently
persistent memory and device memory management. I believe I bring a
unique perspective to the TAB and am thankful for the opportunity to
serve with your support.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
