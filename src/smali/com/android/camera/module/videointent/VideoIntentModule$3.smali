.class final Lcom/android/camera/module/videointent/VideoIntentModule$3;
.super Ljava/lang/Object;
.source "VideoIntentModule.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 427
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoIntentModule$3;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$3;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$200(Lcom/android/camera/module/videointent/VideoIntentModule;)V

    .line 431
    return-void
.end method
