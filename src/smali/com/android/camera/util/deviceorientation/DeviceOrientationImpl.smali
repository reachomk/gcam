.class final Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;
.super Ljava/lang/Object;
.source "DeviceOrientationImpl.java"

# interfaces
.implements Lcom/android/camera/util/deviceorientation/DeviceOrientation;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lastDeviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private logger:Lcom/android/camera/debug/Logger;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final orientationListener:Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "DeviceOrientation"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/camera/async/MainThread;Landroid/content/Context;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->listeners:Ljava/util/List;

    .line 32
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    iput-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->lastDeviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 38
    iput-object p1, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 39
    new-instance v0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;-><init>(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->orientationListener:Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;

    .line 40
    sget-object v0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->TAG:Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->logger:Lcom/android/camera/debug/Logger;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;I)Lcom/google/android/apps/camera/util/layout/Orientation;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->roundDeviceOrientation(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;)Lcom/google/android/apps/camera/util/layout/Orientation;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->lastDeviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/google/android/apps/camera/util/layout/Orientation;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->lastDeviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->logger:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method

.method private final roundDeviceOrientation(I)Lcom/google/android/apps/camera/util/layout/Orientation;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-ltz p1, :cond_0

    const/16 v0, 0x168

    if-ge p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->lastDeviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 82
    rsub-int v3, v0, 0x168

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 83
    const/16 v3, 0x32

    if-lt v0, v3, :cond_1

    .line 85
    :goto_1
    if-eqz v1, :cond_2

    .line 86
    add-int/lit8 v0, p1, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    .line 87
    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->from(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    .line 89
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 80
    goto :goto_0

    :cond_1
    move v1, v2

    .line 83
    goto :goto_1

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->lastDeviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    goto :goto_2
.end method


# virtual methods
.method public final addListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->lastDeviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    return-object v0
.end method

.method public final disable()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->orientationListener:Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;

    invoke-virtual {v0}, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;->disable()V

    .line 71
    return-void
.end method

.method public final enable()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->orientationListener:Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;

    invoke-virtual {v0}, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;->enable()V

    .line 66
    return-void
.end method

.method public final removeListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "Removing non-existing listener."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method
