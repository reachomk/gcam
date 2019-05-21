.class public final Lcom/android/camera/session/PlaceholderManager$Placeholder;
.super Ljava/lang/Object;
.source "PlaceholderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/session/PlaceholderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Placeholder"
.end annotation


# instance fields
.field final outputTitle:Ljava/lang/String;

.field final outputUri:Landroid/net/Uri;

.field final time:J


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputTitle:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    .line 47
    iput-wide p3, p0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->time:J

    .line 48
    return-void
.end method
