.class final Lcom/android/camera/util/lifecycle/AppLifecycle$2;
.super Ljava/lang/Object;
.source "AppLifecycle.java"

# interfaces
.implements Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/lifecycle/AppLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKLC___(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V
    .locals 1

    .prologue
    .line 83
    instance-of v0, p1, Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppStart;

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppStart;

    invoke-interface {p1}, Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppStart;->onAppStart()V

    .line 86
    :cond_0
    return-void
.end method
