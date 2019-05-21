.class public Lcom/android/camera/util/lifecycle/Lifecycles;
.super Ljava/lang/Object;
.source "Lifecycles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/lifecycle/Lifecycles$AddObserver;,
        Lcom/android/camera/util/lifecycle/Lifecycles$AddAppObserver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addObserverOnMainThread$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHKMCPB3F5HMOP9F85O70J39CPIM6UB3DHIJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UR39C9P62SJ9CLPIUSRKD5Q66Q1FDHKMCPB3F5HMOP9F9HKMCPB3F5HMOPAFC9PMASJMCLP3MAAM(Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/util/lifecycle/AppLifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1, p2}, Lcom/android/camera/util/lifecycle/AppLifecycle;->addObserver$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TG____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/android/camera/util/lifecycle/Lifecycles$AddAppObserver;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/util/lifecycle/Lifecycles$AddAppObserver;-><init>(Lcom/android/camera/util/lifecycle/AppLifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static addObserverOnMainThread$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TIILG_(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->addObserver$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TG____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/android/camera/util/lifecycle/Lifecycles$AddObserver;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/util/lifecycle/Lifecycles$AddObserver;-><init>(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static provideFaceAnnouncer(Landroid/content/Context;Lcom/android/camera/ui/views/CameraUi;Lcom/google/android/apps/camera/util/time/UtcClock;)Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;
    .locals 4

    .prologue
    .line 1030
    new-instance v1, Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;

    new-instance v2, Lcom/google/android/apps/camera/faceannouncer/TextAnnouncer;

    .line 1033
    invoke-virtual {p1}, Lcom/android/camera/ui/views/CameraUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    const v3, 0x7f1100bd

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {v2, v0}, Lcom/google/android/apps/camera/faceannouncer/TextAnnouncer;-><init>(Landroid/view/View;)V

    invoke-direct {v1, p0, v2, p2}, Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;-><init>(Landroid/content/Context;Lcom/google/android/apps/camera/faceannouncer/TextAnnouncer;Lcom/google/android/apps/camera/util/time/MillisecondClock;)V

    .line 1030
    return-object v1
.end method
