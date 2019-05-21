.class public Lcom/android/camera/ui/controller/CameraFacingStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CameraFacingStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/controller/CameraFacingStatechart$Front;,
        Lcom/android/camera/ui/controller/CameraFacingStatechart$Back;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "FacingChart"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/controller/CameraFacingStatechart;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/controller/CameraFacingStatechart;)Lcom/android/camera/ui/viewfinder/ViewfinderCover;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraFacingStatechart;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/camera/ui/controller/CameraFacingStatechart;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/ui/viewfinder/ViewfinderCover;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraFacingStatechart;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    .line 22
    return-void
.end method
