.class final Lcom/google/android/apps/lightcycle/PanoramaModule$13;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
    .line 813
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$13;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 5

    .prologue
    .line 821
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$13;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    .line 822
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$3500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/camera/inject/activity/ActivityServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/inject/activity/ActivityServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDisplayRotation(Landroid/view/WindowManager;)I

    move-result v0

    .line 823
    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1000()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$13;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$3600(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onDisplayChange (old:new): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$13;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$3600(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_0

    .line 825
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$13;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$13;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v1, v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$3602(Lcom/google/android/apps/lightcycle/PanoramaModule;I)I

    .line 828
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .prologue
    .line 833
    return-void
.end method
