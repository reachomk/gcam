.class final Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior$2;
.super Landroid/content/BroadcastReceiver;
.source "FinishActivityOnScreenOffBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;


# direct methods
.method constructor <init>(Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior$2;->this$0:Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior$2;->this$0:Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received UserPresent broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;->access$100(Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;Ljava/lang/String;)V

    .line 131
    return-void
.end method
