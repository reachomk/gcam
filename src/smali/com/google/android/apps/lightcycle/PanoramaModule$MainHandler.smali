.class final Lcom/google/android/apps/lightcycle/PanoramaModule$MainHandler;
.super Landroid/os/Handler;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MainHandler"
.end annotation


# instance fields
.field private final module:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/apps/lightcycle/PanoramaModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 220
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$MainHandler;->module:Ljava/lang/ref/WeakReference;

    .line 221
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$MainHandler;->module:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/PanoramaModule;

    .line 226
    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 229
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 231
    :pswitch_0
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$000(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    goto :goto_0

    .line 234
    :pswitch_1
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$100(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/view/View;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 237
    :pswitch_2
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$100(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/view/View;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 240
    :pswitch_3
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$300(Lcom/google/android/apps/lightcycle/PanoramaModule;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    .line 241
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$400(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    goto :goto_0

    .line 244
    :pswitch_4
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$400(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
