.class final Lcom/google/android/apps/lightcycle/PanoramaModule$2;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 283
    :cond_0
    return v0
.end method
