.class final Lcom/android/camera/util/lifecycle/Lifecycles$AddAppObserver;
.super Ljava/lang/Object;
.source "Lifecycles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/lifecycle/Lifecycles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddAppObserver"
.end annotation


# instance fields
.field private final lifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;

.field private final observer$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCL7M4SR5E9R6ASHR:Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/lifecycle/AppLifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/camera/util/lifecycle/Lifecycles$AddAppObserver;->lifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;

    .line 63
    iput-object p2, p0, Lcom/android/camera/util/lifecycle/Lifecycles$AddAppObserver;->observer$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCL7M4SR5E9R6ASHR:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 64
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/Lifecycles$AddAppObserver;->lifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;

    iget-object v1, p0, Lcom/android/camera/util/lifecycle/Lifecycles$AddAppObserver;->observer$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCL7M4SR5E9R6ASHR:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    invoke-virtual {v0, v1}, Lcom/android/camera/util/lifecycle/AppLifecycle;->addObserver$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TG____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 69
    return-void
.end method
