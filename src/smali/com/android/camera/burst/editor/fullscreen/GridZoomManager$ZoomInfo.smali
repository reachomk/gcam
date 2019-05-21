.class final Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;
.super Ljava/lang/Object;
.source "GridZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZoomInfo"
.end annotation


# instance fields
.field public final dx:F

.field public final dy:F

.field public final gridImageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

.field public final startScale:F

.field public final startingClip:Landroid/graphics/Rect;

.field public final targetClip:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/camera/burst/editor/grid/BurstImageView;FFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->gridImageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    .line 112
    iput p4, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->startScale:F

    .line 113
    iput p2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->dx:F

    .line 114
    iput p3, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->dy:F

    .line 115
    iput-object p5, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->startingClip:Landroid/graphics/Rect;

    .line 116
    iput-object p6, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->targetClip:Landroid/graphics/Rect;

    .line 117
    return-void
.end method
