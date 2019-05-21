.class final Lcom/android/camera/util/lifecycle/Lifecycles$AddObserver;
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
    name = "AddObserver"
.end annotation


# instance fields
.field private final lifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

.field private final observer$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCL7M4SR5E9R6ASHR:Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/camera/util/lifecycle/Lifecycles$AddObserver;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    .line 78
    iput-object p2, p0, Lcom/android/camera/util/lifecycle/Lifecycles$AddObserver;->observer$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCL7M4SR5E9R6ASHR:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 79
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/Lifecycles$AddObserver;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    iget-object v1, p0, Lcom/android/camera/util/lifecycle/Lifecycles$AddObserver;->observer$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCL7M4SR5E9R6ASHR:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->addObserver$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TG____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 84
    return-void
.end method
