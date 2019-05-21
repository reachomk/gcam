.class public final Lcom/android/camera/util/lifecycle/AppLifecycle;
.super Ljava/lang/Object;
.source "AppLifecycle.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnPause;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnResume;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStart;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStop;


# instance fields
.field private lifecycleEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;",
            ">;"
        }
    .end annotation
.end field

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/burst/BurstA11yButtonController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private onCreate:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

.field private onResume:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

.field private onResumeEvents:I

.field private onStart:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

.field private onStartEvents:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->observers:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->lifecycleEvents:Ljava/util/List;

    .line 28
    iput v1, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onStartEvents:I

    .line 29
    iput v1, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onResumeEvents:I

    return-void
.end method

.method private addLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 51
    invoke-interface {p1, v0}, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;->apply$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKLC___(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->lifecycleEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-object p1
.end method

.method private removeLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->lifecycleEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method


# virtual methods
.method public final addObserver$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TG____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/camera/burst/BurstA11yButtonController$Listener;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->lifecycleEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    .line 40
    invoke-interface {v0, p1}, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;->apply$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKLC___(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    goto :goto_0

    .line 42
    :cond_0
    return-object p1
.end method

.method final onAppCreate()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/android/camera/util/lifecycle/AppLifecycle$1;

    invoke-direct {v0}, Lcom/android/camera/util/lifecycle/AppLifecycle$1;-><init>()V

    .line 66
    invoke-direct {p0, v0}, Lcom/android/camera/util/lifecycle/AppLifecycle;->addLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onCreate:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    .line 75
    return-void
.end method

.method final onAppTerminate()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onCreate:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    invoke-direct {p0, v0}, Lcom/android/camera/util/lifecycle/AppLifecycle;->removeLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 3

    .prologue
    .line 150
    iget v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onResumeEvents:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onResumeEvents:I

    .line 151
    iget v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onResumeEvents:I

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 152
    iget v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onResumeEvents:I

    if-nez v0, :cond_2

    .line 1104
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onResume:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    invoke-direct {p0, v0}, Lcom/android/camera/util/lifecycle/AppLifecycle;->removeLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)V

    .line 1105
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 1106
    instance-of v2, v0, Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppPause;

    if-eqz v2, :cond_0

    .line 1107
    check-cast v0, Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppPause;

    invoke-interface {v0}, Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppPause;->onAppPause()V

    goto :goto_1

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_2
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 141
    iget v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onResumeEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onResumeEvents:I

    .line 142
    iget v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onResumeEvents:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 143
    iget v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onResumeEvents:I

    if-ne v0, v1, :cond_0

    .line 1091
    new-instance v0, Lcom/android/camera/util/lifecycle/AppLifecycle$3;

    invoke-direct {v0}, Lcom/android/camera/util/lifecycle/AppLifecycle$3;-><init>()V

    .line 1092
    invoke-direct {p0, v0}, Lcom/android/camera/util/lifecycle/AppLifecycle;->addLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onResume:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    .line 146
    :cond_0
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 132
    iget v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onStartEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onStartEvents:I

    .line 133
    iget v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onStartEvents:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 134
    iget v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onStartEvents:I

    if-ne v0, v1, :cond_0

    .line 1078
    new-instance v0, Lcom/android/camera/util/lifecycle/AppLifecycle$2;

    invoke-direct {v0}, Lcom/android/camera/util/lifecycle/AppLifecycle$2;-><init>()V

    .line 1079
    invoke-direct {p0, v0}, Lcom/android/camera/util/lifecycle/AppLifecycle;->addLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onStart:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    .line 137
    :cond_0
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onStop()V
    .locals 3

    .prologue
    .line 159
    iget v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onStartEvents:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onStartEvents:I

    .line 160
    iget v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onStartEvents:I

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 161
    iget v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onStartEvents:I

    if-nez v0, :cond_2

    .line 1113
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->onStart:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    invoke-direct {p0, v0}, Lcom/android/camera/util/lifecycle/AppLifecycle;->removeLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)V

    .line 1114
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/AppLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 1115
    instance-of v2, v0, Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppStop;

    if-eqz v2, :cond_0

    .line 1116
    check-cast v0, Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppStop;

    invoke-interface {v0}, Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppStop;->onAppStop()V

    goto :goto_1

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :cond_2
    return-void
.end method
