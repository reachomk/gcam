.class final Lcom/android/camera/debug/Writers$4;
.super Ljava/lang/Object;
.source "Writers.java"

# interfaces
.implements Lcom/android/camera/debug/Writer;


# instance fields
.field private synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/debug/Writers$4;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/debug/Writers$4;->val$tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
