.class public Lcom/android/camera/ui/controller/CameraUiStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CameraUiStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/controller/CameraUiStatechart$Filmstrip;,
        Lcom/android/camera/ui/controller/CameraUiStatechart$Capture;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityProperties:Lcom/google/android/apps/camera/async/PropertyResetter;

.field private photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

.field private rotationAnimation:I

.field private volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

.field private window:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "CameraUiStatechart"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/controller/CameraUiStatechart;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/camera/ui/controller/CameraUiStatechart;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/CameraUiStatechart;)Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiStatechart;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/CameraUiStatechart;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/CameraUiStatechart;->setRotationAnimation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/controller/CameraUiStatechart;)Lcom/android/camera/ui/PhotoVideoPaginator;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiStatechart;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/controller/CameraUiStatechart;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/android/camera/ui/controller/CameraUiStatechart;->rotationAnimation:I

    return v0
.end method

.method private final setRotationAnimation(I)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiStatechart;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 102
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 103
    iget-object v1, p0, Lcom/android/camera/ui/controller/CameraUiStatechart;->window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 104
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/google/android/apps/camera/statecharts/StateBase;->enter()V

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiStatechart;->activityProperties:Lcom/google/android/apps/camera/async/PropertyResetter;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/PropertyResetter;->resetAll()V

    .line 45
    return-void
.end method

.method public initialize(Landroid/view/Window;Lcom/google/android/apps/camera/async/PropertyResetter;Lcom/android/camera/ui/PhotoVideoPaginator;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;)V
    .locals 1

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraUiStatechart;->window:Landroid/view/Window;

    .line 35
    iput-object p2, p0, Lcom/android/camera/ui/controller/CameraUiStatechart;->activityProperties:Lcom/google/android/apps/camera/async/PropertyResetter;

    .line 36
    iput-object p3, p0, Lcom/android/camera/ui/controller/CameraUiStatechart;->photoVideoPaginator:Lcom/android/camera/ui/PhotoVideoPaginator;

    .line 37
    iput-object p4, p0, Lcom/android/camera/ui/controller/CameraUiStatechart;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 38
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iput v0, p0, Lcom/android/camera/ui/controller/CameraUiStatechart;->rotationAnimation:I

    .line 39
    return-void
.end method
