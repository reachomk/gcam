.class public Lcom/google/android/apps/camera/faceannouncer/TextAnnouncer;
.super Ljava/lang/Object;
.source "TextAnnouncer.java"


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2013
    iput-object p1, p0, Lcom/google/android/apps/camera/faceannouncer/TextAnnouncer;->view:Landroid/view/View;

    .line 2014
    return-void
.end method


# virtual methods
.method public announceMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/google/android/apps/camera/faceannouncer/TextAnnouncer;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1019
    return-void
.end method
