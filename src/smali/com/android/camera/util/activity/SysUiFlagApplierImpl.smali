.class public final Lcom/android/camera/util/activity/SysUiFlagApplierImpl;
.super Ljava/lang/Object;
.source "SysUiFlagApplierImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/android/camera/util/activity/SysUiFlagApplier;
.implements Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnWindowFocusChanged;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnPause;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnResume;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cachedVisibility:I

.field private isPaused:Z

.field private listener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private final window:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "SysUiFlag"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/async/MainThread;Landroid/view/Window;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->isPaused:Z

    .line 34
    const/16 v0, 0x705

    iput v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->cachedVisibility:I

    .line 92
    new-instance v0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl$2;

    invoke-direct {v0, p0}, Lcom/android/camera/util/activity/SysUiFlagApplierImpl$2;-><init>(Lcom/android/camera/util/activity/SysUiFlagApplierImpl;)V

    iput-object v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->listener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 39
    iput-object p2, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->window:Landroid/view/Window;

    .line 42
    new-instance v0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/util/activity/SysUiFlagApplierImpl$1;-><init>(Lcom/android/camera/util/activity/SysUiFlagApplierImpl;)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/util/activity/SysUiFlagApplierImpl;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->setSystemUiListener()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/util/activity/SysUiFlagApplierImpl;)Landroid/view/Window;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->window:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/util/activity/SysUiFlagApplierImpl;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->cachedVisibility:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/util/activity/SysUiFlagApplierImpl;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->isPaused:Z

    return v0
.end method

.method private final setSystemUiListener()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->listener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 90
    return-void
.end method


# virtual methods
.method public final applySysUIFlag(I)V
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Applying sys ui flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput p1, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->cachedVisibility:I

    .line 63
    iget-object v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 64
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->isPaused:Z

    .line 76
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->isPaused:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->reApplySysUiFlags()V

    .line 71
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onWindowFocusChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->isPaused:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->reApplySysUiFlags()V

    .line 86
    :cond_0
    return-void
.end method

.method public final reApplySysUiFlags()V
    .locals 4

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->cachedVisibility:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->isPaused:Z

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->cachedVisibility:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Reapplying sys ui flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->cachedVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 57
    :cond_0
    return-void
.end method
