.class final Lcom/android/camera/debug/SystemHealth$1;
.super Ljava/lang/Object;
.source "SystemHealth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/debug/SystemHealth;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/debug/SystemHealth;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/SystemHealth;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/camera/debug/SystemHealth$1;->this$0:Lcom/android/camera/debug/SystemHealth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/debug/SystemHealth$1;->this$0:Lcom/android/camera/debug/SystemHealth;

    invoke-static {v0}, Lcom/android/camera/debug/SystemHealth;->access$000(Lcom/android/camera/debug/SystemHealth;)V

    .line 29
    return-void
.end method
