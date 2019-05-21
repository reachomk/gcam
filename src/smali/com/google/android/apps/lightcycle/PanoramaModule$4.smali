.class final Lcom/google/android/apps/lightcycle/PanoramaModule$4;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$4;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 378
    check-cast p1, Ljava/lang/String;

    .line 1381
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$4;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1900(Lcom/google/android/apps/lightcycle/PanoramaModule;Ljava/lang/String;)V

    .line 378
    return-void
.end method
