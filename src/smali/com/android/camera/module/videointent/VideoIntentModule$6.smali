.class final Lcom/android/camera/module/videointent/VideoIntentModule$6;
.super Ljava/lang/Object;
.source "VideoIntentModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/VideoIntentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/VideoIntentModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/VideoIntentModule;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoIntentModule$6;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTap(Landroid/graphics/PointF;)Z
    .locals 5

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$6;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$100(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventTapOnPreview;

    new-instance v2, Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v1, v2}, Lcom/android/camera/module/imageintent/event/EventTapOnPreview;-><init>(Landroid/graphics/Point;)V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 553
    const/4 v0, 0x1

    return v0
.end method
