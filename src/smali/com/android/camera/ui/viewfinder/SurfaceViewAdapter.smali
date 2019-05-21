.class final Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;
.super Ljava/lang/Object;
.source "SurfaceViewAdapter.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;
    }
.end annotation


# static fields
.field private static sInstanceNum:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private activeSurface:Landroid/view/Surface;

.field private activeSurfaceSize:Lcom/android/camera/util/Size;

.field private config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

.field private final frame:Landroid/widget/FrameLayout;

.field private final instrumentation:Lcom/android/camera/stats/Instrumentation;

.field private lastOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

.field private final layoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private layoutSize:Lcom/android/camera/util/Size;

.field private final logger:Lcom/android/camera/debug/Logger;

.field private final mainActivityLayout:Landroid/widget/FrameLayout;

.field private final needsSurfaceViewForceUpdate:Z

.field private onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private setSizeOnReconfigure:Z

.field private final surfaceHolder:Landroid/view/SurfaceHolder;

.field private final surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field private surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final surfaceView:Landroid/view/SurfaceView;

.field private surfaceViewUpdateWindowMethod:Ljava/lang/reflect/Method;

.field private viewfinderSession:Lcom/android/camera/stats/ViewfinderSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->sInstanceNum:I

    return-void
.end method

.method constructor <init>(Lcom/android/camera/debug/Logger$Factory;Landroid/widget/FrameLayout;Landroid/view/SurfaceView;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/stats/Instrumentation;Lcom/android/camera/ui/MainActivityLayout;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusMMR1OrHigher()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 55
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->needsSurfaceViewForceUpdate:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->setSizeOnReconfigure:Z

    .line 84
    iput-object p2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->frame:Landroid/widget/FrameLayout;

    .line 85
    iput-object p3, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceView:Landroid/view/SurfaceView;

    .line 86
    iput-object p4, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 87
    iput-object p5, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 88
    iput-object p6, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    .line 89
    iput-object p7, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->mainActivityLayout:Landroid/widget/FrameLayout;

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 92
    sget v0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->sInstanceNum:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->sInstanceNum:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ViewfinderSV"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->TAG:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->TAG:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    .line 96
    new-instance v0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;-><init>(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;B)V

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 100
    new-instance v0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$1;-><init>(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)V

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->naturalUiOrientation()Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->lastOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->mainActivityLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 132
    return-void

    :cond_0
    move v0, v2

    .line 1493
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/stats/ViewfinderSession;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->viewfinderSession:Lcom/android/camera/stats/ViewfinderSession;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceStateUpdated()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRMD5INEPJ9DPI6ASHFADQN4PJ1CDILCQB5ET0M8OBGEHIN4EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/burst/OrientationLockController;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/util/layout/NaturalOrientation;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->lastOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;Lcom/android/camera/util/layout/NaturalOrientation;)Lcom/android/camera/util/layout/NaturalOrientation;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->lastOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->frame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/ui/viewfinder/ViewfinderConfig;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;Lcom/android/camera/util/Size;Lcom/android/camera/ui/viewfinder/ViewfinderConfig;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->reconfigureSurface(Lcom/android/camera/util/Size;Lcom/android/camera/ui/viewfinder/ViewfinderConfig;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurfaceSize:Lcom/android/camera/util/Size;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurface:Landroid/view/Surface;

    return-object p1
.end method

.method private static clampToZero(F)I
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    float-to-int v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isSurfaceConsumable()Z
    .locals 7

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurfaceSize:Lcom/android/camera/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurface:Landroid/view/Surface;

    .line 230
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    :cond_0
    const/4 v0, 0x0

    .line 247
    :cond_1
    :goto_0
    return v0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurfaceSize:Lcom/android/camera/util/Size;

    invoke-static {v0}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/AspectRatio;->asLandscape()Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v0, v0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderAspectRatio:Lcom/android/camera/util/AspectRatio;

    invoke-virtual {v0}, Lcom/android/camera/util/AspectRatio;->asLandscape()Lcom/android/camera/util/AspectRatio;

    move-result-object v2

    .line 237
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 239
    if-nez v0, :cond_1

    .line 240
    iget-object v3, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    .line 242
    invoke-virtual {v1}, Lcom/android/camera/util/AspectRatio;->asLandscape()Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {v2}, Lcom/android/camera/util/AspectRatio;->asLandscape()Lcom/android/camera/util/AspectRatio;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2f

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Aspect ratios do not match! surface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " preview: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v3, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final reconfigureSurface(Lcom/android/camera/util/Size;Lcom/android/camera/ui/viewfinder/ViewfinderConfig;)V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 253
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    invoke-static {p2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 254
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutSize:Lcom/android/camera/util/Size;

    invoke-virtual {p1, v3}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    .line 255
    :goto_1
    iget-object v4, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->lastOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    iget-object v5, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v5}, Lcom/android/camera/burst/OrientationLockController;->naturalUiOrientation()Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v5

    if-eq v4, v5, :cond_3

    .line 257
    :goto_2
    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    :cond_0
    iput-object p2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    .line 258
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutSize:Lcom/android/camera/util/Size;

    .line 260
    iget-object v4, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    if-nez v4, :cond_4

    .line 261
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Viewfinder config is null, ignoring reconfigureSurface."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 345
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 253
    goto :goto_0

    :cond_2
    move v3, v2

    .line 254
    goto :goto_1

    :cond_3
    move v1, v2

    .line 255
    goto :goto_2

    .line 265
    :cond_4
    iget-object v4, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 266
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutSize:Lcom/android/camera/util/Size;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Activity layout is not stable yet, delaying configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    goto :goto_3

    .line 2486
    :cond_5
    new-instance v4, Lcom/android/camera/util/Size;

    iget-object v5, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 2487
    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 270
    iget-object v5, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v5, v5, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    invoke-virtual {v4, v5}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 272
    if-nez v3, :cond_6

    if-nez v0, :cond_6

    if-eqz v4, :cond_6

    if-nez v1, :cond_6

    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Ignoring reconfigure because layout, viewfinder config and surface frame size are the same."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 280
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Active module config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutSize:Lcom/android/camera/util/Size;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Active layout config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Setting configuration for the SurfaceHolder and containing FrameLayout."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutSize:Lcom/android/camera/util/Size;

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/CaptureLayoutHelper;->onNonDecorWindowSizeChanged(II)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v1, v1, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Viewfinder Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v1, v1, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    invoke-static {v1}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Viewfinder Aspect Ratio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v1, v1, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderAspectRatio:Lcom/android/camera/util/AspectRatio;

    invoke-virtual {v1}, Lcom/android/camera/util/AspectRatio;->toFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureLayoutHelper;->onPreviewAspectRatioChanged(F)V

    .line 289
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 290
    new-instance v1, Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 291
    iget-object v3, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x17

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Computed Preview Rect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 292
    iget-object v3, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    invoke-static {v1}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Computed Preview Rect Aspect Ratio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    iget-object v3, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v3, v3, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Setting fixed size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 296
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->clampToZero(F)I

    move-result v1

    .line 297
    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->clampToZero(F)I

    move-result v3

    .line 298
    iget-object v4, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->clampToZero(F)I

    move-result v5

    sub-int/2addr v4, v5

    .line 299
    iget-object v5, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->layoutSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->clampToZero(F)I

    move-result v0

    sub-int v0, v5, v0

    .line 301
    iget-object v5, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Setting margins: Margin{left:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", top: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", right: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bottom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 313
    iget-object v5, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->frame:Landroid/widget/FrameLayout;

    .line 3456
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->isMainThread()Z

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 3457
    iget-object v6, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x42

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "setMarginsAbsoluteFrame(width = -1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", height = -1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 3459
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x33

    invoke-direct {v6, v9, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3461
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout$LayoutParams;->setLayoutDirection(I)V

    .line 3463
    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 3465
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3466
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3467
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 315
    iget-object v5, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1, v3, v4, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 321
    iget-boolean v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->setSizeOnReconfigure:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurface:Landroid/view/Surface;

    if-nez v0, :cond_9

    .line 322
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v1, v1, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    .line 323
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v3, v3, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    .line 322
    invoke-interface {v0, v1, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 324
    iput-boolean v2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->setSizeOnReconfigure:Z

    .line 343
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto/16 :goto_3

    .line 325
    :cond_9
    iget-boolean v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->needsSurfaceViewForceUpdate:Z

    if-eqz v0, :cond_8

    .line 326
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Setting SurfaceView size from layout"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 334
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v1, v1, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceView:Landroid/view/SurfaceView;

    .line 335
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v1, v1, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 336
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Forcing window update"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 4349
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceViewUpdateWindowMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    .line 4350
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceView:Landroid/view/SurfaceView;

    .line 4352
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "updateWindow"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 4353
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceViewUpdateWindowMethod:Ljava/lang/reflect/Method;

    .line 4354
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceViewUpdateWindowMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4356
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceViewUpdateWindowMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceView:Landroid/view/SurfaceView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_4

    .line 4358
    :catch_0
    move-exception v0

    :goto_5
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Couldn\'t force SurfaceView\'s window update"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5
.end method

.method private final surfaceStateUpdated()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 363
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->isSurfaceConsumable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurface:Landroid/view/Surface;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x48

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Surface is consumable, and a previous future exists. Completing future: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->viewfinderSession:Lcom/android/camera/stats/ViewfinderSession;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->viewfinderSession:Lcom/android/camera/stats/ViewfinderSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/ViewfinderSession;->recordViewfinderSurfaceReady()V

    .line 370
    iput-object v4, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->viewfinderSession:Lcom/android/camera/stats/ViewfinderSession;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 373
    iput-object v4, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "A previous future exists, but the active Surface object is null. Setting exception. Surface has been destroyed."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v2, "Surface has been destroyed."

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 385
    iput-object v4, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    .line 387
    :cond_1
    return-void

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Surface was updated, but surface request is null or done."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Surface was updated, but it was not consumable."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 221
    iput-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurface:Landroid/view/Surface;

    .line 222
    iput-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurfaceSize:Lcom/android/camera/util/Size;

    .line 224
    :cond_0
    return-void
.end method

.method public final getSurfaceRequest()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public final startViewfinder(Lcom/android/camera/ui/viewfinder/ViewfinderConfig;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/viewfinder/ViewfinderConfig;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 141
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->viewfinder()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->create()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/ViewfinderSession;

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->viewfinderSession:Lcom/android/camera/stats/ViewfinderSession;

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->viewfinderSession:Lcom/android/camera/stats/ViewfinderSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/ViewfinderSession;->recordViewfinderSurfaceStart()V

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "startViewfinder with config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    .line 151
    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v3, "Previous request exists, setting exception and nulling request."

    invoke-virtual {v2, v3}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v3, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v4, "Config canceled"

    invoke-direct {v3, v4}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 154
    iput-object v5, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v2, "Reconfiguring surface because config is not the same as the previous surface config."

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 161
    iput-boolean v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->setSizeOnReconfigure:Z

    move v0, v1

    .line 179
    :cond_1
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 180
    iput-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    .line 182
    if-eqz v0, :cond_2

    .line 187
    new-instance v0, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->reconfigureSurface(Lcom/android/camera/util/Size;Lcom/android/camera/ui/viewfinder/ViewfinderConfig;)V

    :cond_2
    move-object v0, v1

    .line 192
    :goto_0
    return-object v0

    .line 163
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->isSurfaceConsumable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "The surface is already consumable. Returning an immediateFuture with the currently active surface."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->viewfinderSession:Lcom/android/camera/stats/ViewfinderSession;

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->viewfinderSession:Lcom/android/camera/stats/ViewfinderSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/ViewfinderSession;->recordViewfinderSurfaceCreated()V

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->viewfinderSession:Lcom/android/camera/stats/ViewfinderSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/ViewfinderSession;->recordViewfinderSurfaceReady()V

    .line 170
    iput-object v5, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->viewfinderSession:Lcom/android/camera/stats/ViewfinderSession;

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurface:Landroid/view/Surface;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public final stopViewfinder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Stop and remove viewfinder."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Previous request exists, setting exception and nulling request."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v2, "Config canceled"

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 203
    iput-object v3, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceRequest:Lcom/google/common/util/concurrent/SettableFuture;

    .line 206
    :cond_0
    iput-object v3, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->config:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    .line 207
    iput-object v3, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->activeSurfaceSize:Lcom/android/camera/util/Size;

    .line 210
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Hiding the surface view."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 213
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->mainActivityLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 214
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Hidden."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 215
    return-void
.end method
