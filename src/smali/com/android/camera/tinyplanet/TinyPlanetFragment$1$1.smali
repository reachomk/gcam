.class final Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;
.super Landroid/os/AsyncTask;
.source "TinyPlanetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;


# direct methods
.method constructor <init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs doInBackground$51DKOQJ1EPGIUR31DPJIULJFD5I3MAACD9GNCO9FDHGMSPPFAPNMIP1R()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 146
    :goto_0
    return-object v3

    .line 142
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v1, v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v2, v2, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$500(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v1, v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->doInBackground$51DKOQJ1EPGIUR31DPJIULJFD5I3MAACD9GNCO9FDHGMSPPFAPNMIP1R()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 134
    .line 1151
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$600(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Lcom/android/camera/tinyplanet/TinyPlanetPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v1, v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v2, v2, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->setBitmap(Landroid/graphics/Bitmap;Ljava/util/concurrent/locks/Lock;)V

    .line 1152
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$000(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 1153
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$002(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1154
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$100(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$102(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1156
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$700(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V

    .line 1158
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
